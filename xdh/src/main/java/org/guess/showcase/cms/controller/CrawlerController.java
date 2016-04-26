package org.guess.showcase.cms.controller;

import java.io.File;
import java.util.Date;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpUtils;

import org.apache.commons.lang.StringUtils;
import org.guess.core.utils.DateUtil;
import org.guess.core.utils.FileUtils;
import org.guess.core.utils.UuidUtil;
import org.guess.core.utils.web.ServletUtils;
import org.guess.showcase.cms.model.CrawlerArticle;
import org.guess.showcase.cms.service.CrawlerArticleService;
import org.guess.showcase.cms.util.HttpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping("wz/crawler")
	public void crawler(HttpServletRequest request) {
		craw_www_java_seo_cn(request);
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
		mav.addObject("nextCrawlerArticle", nextCrawlerArticle);
		mav.addObject("preCrawlerArticle", preCrawlerArticle);
		
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
	        }
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
			crawlerArticleService.save(crawlerArticle);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		String nextUrl = "http://www.javaseo.cn/article/32/";
		String pageContent = HttpUtil.getUrl(nextUrl);
		String regex = "<h1>([\\s\\S]*)</h1>";
		Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(pageContent);
        String title = "";
        while (m.find()) {
        	title = m.group(1);
        }
        
        System.out.println(title);
	}
	
}
