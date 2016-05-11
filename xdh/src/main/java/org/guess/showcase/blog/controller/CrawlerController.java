package org.guess.showcase.blog.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.utils.DateUtil;
import org.guess.core.utils.FileUtils;
import org.guess.core.utils.HttpUtil;
import org.guess.core.utils.UuidUtil;
import org.guess.core.utils.web.ServletUtils;
import org.guess.showcase.blog.model.CrawlerArticle;
import org.guess.showcase.blog.service.CrawlerArticleService;
import org.guess.showcase.cms.model.ClickAppraise;
import org.guess.showcase.cms.service.ClickAppraiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.google.gson.Gson;

/**
 * 爬虫
 * @author shenyuchuan
 *
 */
@Controller
public class CrawlerController {
	@Autowired
	private CrawlerArticleService crawlerArticleService;
	@Autowired
	private ClickAppraiseService appraiseService;
	@RequestMapping("wz/crawler")
	public void crawler(HttpServletRequest request) {
		craw_www_java_seo_cn(request);
		craw_chenpeng_info(request);
	}
	
	
	
	/**
	 * 文章详细
	 * @param id
	 * @return
	 */
	@RequestMapping("blog/{id}")
	public ModelAndView getCrawlerArticleById(@PathVariable("id") Long id){
		ModelAndView mav = new ModelAndView("/front/jnh/blog/crawlerArticleDetail");
		CrawlerArticle crawlerArticle = crawlerArticleService.getCrawlerArticleById(id);
		crawlerArticleService.addHits(crawlerArticle);
		mav.addObject("crawlerArticle", crawlerArticle);		
		CrawlerArticle nextCrawlerArticle = crawlerArticleService.getCrawlerArticleById(id + 1);
		CrawlerArticle preCrawlerArticle = crawlerArticleService.getCrawlerArticleById(id - 1);
		ClickAppraise appraise = appraiseService.findByTableAndArticleId("t_crawler_article", id);
		mav.addObject("nextCrawlerArticle", nextCrawlerArticle);
		mav.addObject("preCrawlerArticle", preCrawlerArticle);
		mav.addObject("appraise", appraise);
		
		return mav;
	}
	
	/**
	 * 文章详细
	 * @param id
	 * @return
	 */
	@RequestMapping("blog/page/{pageSize}")
	public ModelAndView pageCrawlerArticle(@PathVariable(value="pageSize") Integer page){
		if(page == null){
			page = 1;
		}
		
		ModelAndView mav = new ModelAndView("/front/jnh/blog/crawlerArticleList");
		List<PropertyFilter> andfilters = Lists.newArrayList();
		List<PropertyFilter> filters = Lists.newArrayList();
		PageRequest pageRequest = new PageRequest(page, 20);
		pageRequest.setOrderDir(Sort.DESC);
		pageRequest.setOrderBy("id");
		Page<CrawlerArticle> pageData = crawlerArticleService.findPage(pageRequest, andfilters, filters);
		System.out.println(new Gson().toJson(pageData));
		mav.addObject("pr", pageData.isFirstPage() ? page : page - 1);
		mav.addObject("pn", pageData.isLastPage() ? page : page + 1);
		mav.addObject("p", page);
		mav.addObject("pp", pageData.getTotalPages());
		mav.addObject("page", pageData);
		return mav;
	}
	
	/**
	 * 抓取www.javaseo.cn网站内容
	 */
	private void craw_www_java_seo_cn(HttpServletRequest request){
		String url = "http://www.javaseo.cn/";
		String pageContent = HttpUtil.getUrl(url);
		String regex = "<a href=\"http://www.javaseo.cn/article/([\\d]{1,})/\"  target=\"_blank\">";
		Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(pageContent);
        Integer maxId = 0;
        while (m.find()) {
            Integer artileId = Integer.parseInt(m.group(1)); 
            if(artileId > maxId){
            	maxId = artileId;
            }
        }
        
        Integer maxArticleId = crawlerArticleService.getMaxArticleIdByUrl(url);
        if(maxId > maxArticleId){
        	//继续爬文章内容
        	for(int i = maxArticleId + 1; i <= maxId; i++){
        		set_java_seo_cn_ContentById(i, request);
        	}
        }
	}
	
	/**
	 * 抓陈鹏博客
	 * @param request
	 */
	private void craw_chenpeng_info(HttpServletRequest request){
		String url = "http://chenpeng.info/";
		String pageContent = "";;
		try {
			pageContent = HttpUtil.getByHttp(url);
		} catch (Exception e1) {
			return;
		}
		
		if(StringUtils.isBlank(pageContent)){
			return;
		}
		
		String regex = "<article id=\"post-([\\d]*)\" style=\"overflow: hidden;\"";
		Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(pageContent);
        Integer maxId = 0;
        while (m.find()) {
            Integer artileId = Integer.parseInt(m.group(1)); 
            if(artileId > maxId){
            	maxId = artileId;
            }
        }
        
        Integer maxArticleId = crawlerArticleService.getMaxArticleIdByUrl(url);
        if(maxId > maxArticleId){
        	//继续爬文章内容
        	//该博客文章过多，每次最多获取10篇
        	int loopCount = 1;
        	if(maxArticleId < 50){
        		maxArticleId = 50;
    		}
        	for(int i = maxArticleId + 1; i <= maxId; i++){
        		if(loopCount > 10){
        			break;
        		}
        		
        		loopCount ++;

        		try{
        			set_chengpeng_info_ContentById(i, request);
        		}catch(Exception e){
        			loopCount = loopCount - 1;
        		}
        		        		
        	}
        }
	}
	
	/**
	 * 根据文章id保存javaseo的内容
	 * @param articleId 文章id
	 * @throws Exception 
	 */
	private void set_chengpeng_info_ContentById(Integer articleId, HttpServletRequest request) throws Exception{
		try{
			String nextUrl = "http://chenpeng.info/html/" + articleId;
			String pageContent = HttpUtil.getByHttp(nextUrl);
			String regex = "<title>([\\s\\S]*?)</title>";
			Pattern p = Pattern.compile(regex);
	        Matcher m = p.matcher(pageContent);
	        String title = "";
	        while (m.find()) {
	           title = m.group(1);
	        }
	        if(StringUtils.isBlank(title) || title.contains("未找到页面")){
	        	return;
	        }
	        title = title.replace("| 陈鹏个人博客", "");
	        			
	        regex = "<article ([\\s\\S]*?)</article>";
			p = Pattern.compile(regex);
	        m = p.matcher(pageContent);
	        String content = "";
	        while (m.find()) {
	           content = m.group(0);
	        }
	        
	        if(StringUtils.isBlank(content)){
	        	return;
	        }
	        
	        //取消文章标题
	        regex = "<header class=\"post-header \">([\\s\\S]*?)</header>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        while (m.find()) {
	        	content = content.replace(m.group(0), "");	        	
	        }
	        
	        //去掉article标签
	        regex = "<article.+?id=.*?post_.+?>(.*?)</article>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        while (m.find()) {
	        	content = m.group(1);
	        }
	        
	        //去掉百度广告
	        regex = "<script type=\"text/javascript\">([\\s\\S]*?)</script>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        String baiduAD = "";
	        while (m.find()) {
	        	baiduAD = m.group(0);
	        	if(baiduAD.contains("var cpro_id")){
	        		content = content.replace(baiduAD, "");
	        	}
	        	
	        }
	        
	        regex = "<footer class=\"post-footer\">([\\s\\S]*)<div class=\"clear\"></div></div>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        while (m.find()) {
	        	content = content.replace(m.group(0), "");
	        }
	        
	        regex = "<footer class=\"post-footer\">([\\s\\S]*)</footer>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        while (m.find()) {
	        	content = content.replace(m.group(0), "");
	        }
	        
	        regex = "<span class=\"post_type_label \">([\\s\\S]*)</span>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        while (m.find()) {
	        	content = content.replace(m.group(0), "");
	        }
	        
	        regex = "<div class=\"clear\">([\\s\\S]*)</div>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        while (m.find()) {
	        	content = content.replace(m.group(0), "");
	        }
	        
	        String baiduADScript = "<script src=\"http://cpro.baidustatic.com/cpro/ui/c.js\" type=\"text/javascript\"></script>";
	        content = content.replace(baiduADScript, "");
	        regex = "<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        String imgTagSrc = "";
	        while (m.find()) {
	        	imgTagSrc = m.group(1);
	        	if(imgTagSrc.contains("http://static.chenpeng.info/uploads/")){
	        		String dateStr =DateUtil.getDateStr("yyyyMMdd"); 
		        	String fileDirectoryUrl = ServletUtils.getRealPath(request) + "/upload/" + dateStr;
			        File file=new File(fileDirectoryUrl);    
			        if(!file.exists() && !file .isDirectory()){    
			        	file.mkdir();   
			    	}
		        	
			        String imgName = UuidUtil.uuid2() + imgTagSrc.substring(imgTagSrc.lastIndexOf("."));
			        String newImgUrl = fileDirectoryUrl + "/" + imgName;
			        FileUtils.download(imgTagSrc, newImgUrl);
			        content = content.replace(imgTagSrc, "/upload/" + dateStr + "/" + imgName);
	        	}
	        }

	        content = content.replace("http://chenpeng.info", "");
	        content = content.replace("chenpeng.info", "");
	        content = content.replace("http://www.chenpeng.info", "");
	        CrawlerArticle crawlerArticle = new CrawlerArticle();
	        crawlerArticle.setHits(1);
	        crawlerArticle.setCrawlerTime(new Date());
	        crawlerArticle.setTitle(title);
	        crawlerArticle.setArticleMaxId(articleId);
	        crawlerArticle.setUrl("http://chenpeng.info/");
	        crawlerArticle.setArticleType("1");
	        crawlerArticle.setContent(content);
	        crawlerArticle.setWebsiteName("陈鹏的博客");
	        crawlerArticle.setDescrible(this.getDescByContent(content) + "......");
	        //System.out.println(new Gson().toJson(crawlerArticle));
			crawlerArticleService.save(crawlerArticle);
		} catch (Exception e) {
			throw e;
		}
	}
	
	/**
	 * 根据文章id保存javaseo的内容
	 * @param articleId 文章id
	 */
	private void set_java_seo_cn_ContentById(Integer articleId, HttpServletRequest request){
		try{
			String nextUrl = "http://www.javaseo.cn/article/" + articleId + "/";
			String pageContent = HttpUtil.getUrl(nextUrl);
			String regex = "<h1>([\\s\\S]*)</h1>";
			Pattern p = Pattern.compile(regex);
	        Matcher m = p.matcher(pageContent);
	        String title = "";
	        while (m.find()) {
	        	title = m.group(1);
	        }
	        			
			regex = "</h1>([\\s\\S]*)<div class=\"QA-text-foot\">";
			p = Pattern.compile(regex);
	        m = p.matcher(pageContent);
	        String content = "";
	        while (m.find()) {
	        	content = m.group(1);
	        }
	        
	        if(StringUtils.isBlank(content)){
	        	return;
	        }
	        
	        regex = "<img src=\"([\\s\\S]*)\" alt=";
	        p = Pattern.compile(regex);
	        m = p.matcher(content);
	        String imgUrl = "";
	        while (m.find()) {
	        	imgUrl = m.group(1);
	        	if(StringUtils.isNotBlank(imgUrl)){
		        	String dateStr =DateUtil.getDateStr("yyyyMMdd"); 
		        	String fileDirectoryUrl = ServletUtils.getRealPath(request) + "/upload/" + dateStr;
			        File file=new File(fileDirectoryUrl);    
			        if(!file.exists() && !file .isDirectory()){    
			        	file.mkdir();   
			    	}
		        	
			        String imgName = UuidUtil.uuid2() + imgUrl.substring(imgUrl.lastIndexOf("."));
			        String newImgUrl = fileDirectoryUrl + "/" + imgName;
			        FileUtils.download("http://www.javaseo.cn/" + imgUrl, newImgUrl);
			        content = content.replace(imgUrl, "/upload/" + dateStr + "/" + imgName);
		        }
	        }
	        
	        content = content.replace("http://javaseo.cn/article", "/blog");
	        content = content.replace("http://www.javaseo.cn/article", "/blog");
	        content = content.replace("http://www.javaseo.cn", "");
	        content = content.replace("http://javaseo.cn", "");
	        CrawlerArticle crawlerArticle = new CrawlerArticle();
	        crawlerArticle.setHits(1);
	        crawlerArticle.setCrawlerTime(new Date());
	        crawlerArticle.setTitle(title);
	        crawlerArticle.setArticleMaxId(articleId);
	        crawlerArticle.setUrl("http://www.javaseo.cn/");
	        crawlerArticle.setArticleType("1");
	        crawlerArticle.setContent(content);
	        crawlerArticle.setWebsiteName("javaseo");
	        crawlerArticle.setDescrible(this.getDescByContent(content) + "......");
			crawlerArticleService.save(crawlerArticle);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 根据内容获取文章描述
	 * @param content
	 * @return
	 */
	private String getDescByContent(String content){
		String desc = content;
		desc = desc.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		if(desc.length() > 500){
        	desc = desc.substring(0,  500);
        }
		
		
		desc = desc.replaceAll(" ", "");
		
		return desc;
	}
	
	/**
	 * 过滤文章内容的html标签
	 * @param content 文章内容
	 * @return 过滤HTML标签后文章内容
	 */
	private String filterHtmlTag(String content){
		
		return content.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
	}
	
	public static void main(String[] args) {
		/*String url = "http://chenpeng.info/";
		String pageContent = HttpUtil.getByHttp(url);
		String regex = "<article id=\"post-([\\d]*)\" style=\"overflow: hidden;\"";
		Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(pageContent);
        Integer maxId = 0;
        while (m.find()) {
            Integer artileId = Integer.parseInt(m.group(1)); 
            if(artileId > maxId){
            	maxId = artileId;
            }
        }
        */
        String nextUrl = "http://chenpeng.info/html/" + 94;
		String pageContent = "";
		try {
			pageContent = HttpUtil.getByHttp(nextUrl);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String regex = "<title>([\\s\\S]*?)</title>";
		Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(pageContent);
        String title = "";
        while (m.find()) {
           title = m.group(1);
        }
        
        title = title.replace("| 陈鹏个人博客", "");
        
        
        regex = "<article ([\\s\\S]*?)</article>";
		p = Pattern.compile(regex);
        m = p.matcher(pageContent);
        String content = "";
        while (m.find()) {
           content = m.group(0);
        }

        regex = "<script type=\"text/javascript\">([\\s\\S]*?)</script>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        String baiduAD = "";
        while (m.find()) {
        	baiduAD = m.group(0);
        	if(baiduAD.contains("var cpro_id")){
        		content = content.replace(baiduAD, "");
        	}
        	
        }
        
        regex = "<header class=\"post-header \">([\\s\\S]*?)</header>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        String header = "";
        while (m.find()) {
        	//System.out.println(m.group(0));
        	
        }
         
        //System.out.println(content);
        
        regex = "<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        String imgTagSrc = "";
        while (m.find()) {
        	imgTagSrc = m.group(1);
        	if(imgTagSrc.contains("http://static.chenpeng.info/uploads/")){
        		//System.out.println(imgTagSrc);
        	}
        }
        regex = "<article.+?id=.*?post_.+?>(.*?)</article>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        String article = "";
        while (m.find()) {
        	content = m.group(1);
        }
        
        regex = "<footer class=\"post-footer\">([\\s\\S]*)<div class=\"clear\"></div></div>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        while (m.find()) {
        	System.out.println(m.group(0));
        }
        
        regex = "<footer class=\"post-footer\">([\\s\\S]*)</footer>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        while (m.find()) {
        	System.out.println(m.group(0));
        }
        
        regex = "<span class=\"post_type_label \">([\\s\\S]*)</span>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        while (m.find()) {
        	System.out.println(m.group(0));
        }
        
        regex = "<div class=\"clear\">([\\s\\S]*)</div>";
        p = Pattern.compile(regex);
        m = p.matcher(content);
        while (m.find()) {
        	System.out.println(m.group(0));
        }
        
	}
	
}
