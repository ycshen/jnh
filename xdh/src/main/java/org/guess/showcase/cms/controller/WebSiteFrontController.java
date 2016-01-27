package org.guess.showcase.cms.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.utils.web.ServletUtils;
import org.guess.showcase.cms.model.Article;
import org.guess.showcase.cms.model.Category;
import org.guess.showcase.cms.model.ListenerLog;
import org.guess.showcase.cms.service.ArticleService;
import org.guess.showcase.cms.service.ListenerLogService;
import org.guess.showcase.cms.util.CmsConstants;
import org.guess.showcase.cms.util.HttpUtil;
import org.guess.sys.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

/**
 * @author 申鱼川 E-mail:shenyuchuan@xiaojiuwo.cn
 * @version 创建时间：2015年11月18日 下午1:54:26
 * 
 */
@Controller
public class WebSiteFrontController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	private LogService logService;
	@Autowired
	private ListenerLogService listenerLogService;
	
	/**
	 * 网站建设首页(wz.52jnh.com)
	 * @return
	 */
	@RequestMapping("/wz")
	public ModelAndView wz(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/front/jnh/wz/index");
		logService.addSiteListenerLog("www.52jnh.com/wz", "小青年网络科技有限公司", ServletUtils.getIpAddr(request), "");
		return mav;
	}

	/**
	 * 网站报价
	 * @return
	 */
	@RequestMapping("/wz/price")
	public ModelAndView wzPrice(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/wzPrice");		
		return mav;
	}
	
	/**
	 * 关于我们
	 * @return
	 */
	@RequestMapping("/wz/aboutUs")
	public ModelAndView aboutUs(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/about");		
		return mav;
	}
	
	/**
	 * 联系我们
	 * @return
	 */
	@RequestMapping("/wz/linkUs")
	public ModelAndView linkUs(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/link");		
		return mav;
	}
	
	/**
	 * 网站报价
	 * @return
	 */
	@RequestMapping("/wz/customPrice")
	public ModelAndView customPrice(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/customPrice");		
		return mav;
	}

	@RequestMapping("/wz/download")
	public void download(HttpServletRequest request,HttpServletResponse response){  
		InputStream inputStream = null;
		String fileName = "小青年网站建设报价清单.pdf";
		String path = request.getSession().getServletContext().getRealPath("/") + "upload/download/" + fileName;
		try {

			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/pdf");
			response.setHeader("Content-Disposition", "attachment;fileName=" + java.net.URLEncoder.encode("小青年网站建设报价清单.pdf", "UTF-8") );

			File file = new File(path);
			response.setHeader("Content-Length", String.valueOf(file.length()));
			inputStream = new FileInputStream(file);
			OutputStream os = response.getOutputStream();
			byte[] b = new byte[1024];
			int length;
			while ((length = inputStream.read(b)) > 0) {
				os.write(b, 0, length);
			}
			inputStream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} 
   }  
	
	/**
	 * 成功案例
	 * @return
	 */
	@RequestMapping("/wz/successCase")
	public ModelAndView successCase(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/successCase");	
		return mav;
	}
	
	@RequestMapping("/wz/help")
	public ModelAndView help(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/help");	
		return mav;
	}
	
	/**
	 * 模板选择
	 * @return
	 */
	@RequestMapping("/wz/model")
	public ModelAndView model(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/model");
		return mav;	
	}
	
	/**
	 * 域名查询
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/wz/queryDomain")
	public String queryDomain(HttpServletRequest request){
		String domain = request.getParameter("domain");
		logService.addListenerLog("域名查询", domain + ":域名 是否注册", ServletUtils.getIpAddr(request), "游客");
		return queryDomain(domain);
	}
	
	/**
	 * 域名查询
	 * @param domain
	 * @return
	 */
	private String queryDomain(String domain){
		String url = CmsConstants.domain_net_cn + domain;
		
		String returnXML = HttpUtil.getUrl(url);
		String result = "1";
		if(returnXML.contains("210 : Domain name is available")){
			result = "0";
		}
		
		return result;
	}
	
	/**
	 * 监听
	 * @param mav
	 * @param p
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("wz/logList")
	public ModelAndView list(ModelAndView mav, 
			@RequestParam(value="p",required=false,defaultValue="1") int p
			) throws Exception {
		
		List<PropertyFilter> filters = Lists.newArrayList();		
		List<PropertyFilter> andfilters = Lists.newArrayList();
		PageRequest pageRequest = new PageRequest(p, 50);
		pageRequest.setOrderDir(Sort.DESC);
		pageRequest.setOrderBy("accessTime");
		
		Page<ListenerLog> pageData = listenerLogService.findPage(pageRequest, andfilters, filters);
		mav.addObject("page", pageData);
		mav.setViewName("/front/jnh/wz/other/listenerLogList");
		mav.addObject("p", p);
		mav.addObject("pr", pageData.isFirstPage() ? p : p - 1);
		mav.addObject("pn", pageData.isLastPage() ? p : p + 1);
		mav.addObject("pp", pageData.getTotalPages());
		int todayNum = listenerLogService.getCountForToday();
		mav.addObject("todayNum", todayNum);
		int yestodayNum = listenerLogService.getCountForYestoday();
		mav.addObject("yestodayNum", yestodayNum);
		return mav;
	}
	
	public static void main(String[] args) {
		String[] spell = new String[]{ "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
		String h1 = "";
		String h2 = "";
		String h3 = "";
		String domain = "";
		int index = 0;
		for (int i = 0; i < spell.length; i++) {
			h1 = spell[i];
			for (int j = 0; j < spell.length; j++) {
				h2 = spell[j];
				for (int k = 0; k < spell.length; k++) {
					h3 = spell[k];
					domain = h1 + h2 + h3;
					
					if(index >= 17121){
						try{
							if(demainIsRegsiter("www." + domain + ".com")){
								System.out.println("www." + domain + ".com域名可以注册--------------------------------------------------------" );
								System.out.println("终止序列号:" + index);
								break;
							}else{
								System.out.println("www." + domain + ".com" );
							}
						}catch(Exception e){
							System.out.println(index + "                 异常，重新扫描");
						}
						
					}
					index ++;
					System.out.println(index);
				}
			}
		}
		
		System.out.println("检查完毕"+ index);
	}
	
	/**
	 * 域名查询
	 * @param domain
	 * @return
	 */
	private static boolean demainIsRegsiter(String domain){
		boolean result = false;
		String url = CmsConstants.domain_net_cn + domain;
		
		String returnXML = HttpUtil.getUrl(url);
		if(returnXML.contains("210 : Domain name is available")){
			result = true;
		}
		
		return result;
	}
}