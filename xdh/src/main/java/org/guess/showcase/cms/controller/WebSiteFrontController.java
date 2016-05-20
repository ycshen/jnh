package org.guess.showcase.cms.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.utils.HttpUtil;
import org.guess.core.utils.web.ServletUtils;
import org.guess.showcase.cms.model.Guest;
import org.guess.showcase.cms.model.ListenerLog;
import org.guess.showcase.cms.service.ArticleService;
import org.guess.showcase.cms.service.GuestService;
import org.guess.showcase.cms.service.ListenerLogService;
import org.guess.showcase.cms.util.CmsConstants;
import org.guess.showcase.cpa.model.CpaArticle;
import org.guess.showcase.cpa.model.CpaResult;
import org.guess.showcase.cpa.model.CpaUser;
import org.guess.showcase.cpa.service.CpaArticleService;
import org.guess.showcase.cpa.service.CpaResultService;
import org.guess.showcase.cpa.service.CpaUserService;
import org.guess.showcase.cpa.util.RandomUtil;
import org.guess.showcase.cpa.util.UserAgent;
import org.guess.showcase.cpa.util.UserAgentUtil;
import org.guess.sys.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@Autowired
	private CpaArticleService cpaService;
	@Autowired
	private CpaUserService cpaUserService;
	@Autowired
	private CpaResultService cpaResultService;
	
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
	 *//*
	@ResponseBody
	@RequestMapping("/wz/queryDomain")
	public String queryDomain(HttpServletRequest request){
		String domain = request.getParameter("domain");
		logService.addListenerLog("域名查询", domain + ":域名 是否注册", ServletUtils.getIpAddr(request), "游客");
		return queryDomain(domain);
	}*/
	
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
	
	@Autowired
	private GuestService guestService;
	/**
	 * 客人统计
	 * @param mav
	 * @param p
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("wz/guest")
	public ModelAndView guest(ModelAndView mav, 
			@RequestParam(value="p",required=false,defaultValue="1") int p
			) throws Exception {
		
		List<PropertyFilter> filters = Lists.newArrayList();		
		List<PropertyFilter> andfilters = Lists.newArrayList();
		PageRequest pageRequest = new PageRequest(p, 5000);
		pageRequest.setOrderDir(Sort.DESC);
		
		Page<Guest> guestPage = guestService.findPage(pageRequest, andfilters, filters);
		List<Guest> list = guestPage.getResult();

		List<Guest> list_dx = new LinkedList<Guest>();
		List<Guest> list_py = new LinkedList<Guest>();
		List<Guest> list_fx = new LinkedList<Guest>();
		List<Guest> list_gz = new LinkedList<Guest>();
		List<Guest> list_qr = new LinkedList<Guest>();
		int personNum = 0;
		if(list != null && list.size() > 0){
			personNum = list.size();
			for (Guest guest : list) {
				if("高中".equals(guest.getGuestType())){
					list_gz.add(guest);
				}
				
				if("大学".equals(guest.getGuestType())){
					list_dx.add(guest);
				}
				
				if("发小".equals(guest.getGuestType())){
					list_fx.add(guest);
				}
				
				if("朋友".equals(guest.getGuestType())){
					list_py.add(guest);
				}
				
				if("亲人".equals(guest.getGuestType())){
					list_qr.add(guest);
				}
			}
		}
		
		
		mav.setViewName("/front/jnh/wz/other/guest");
		mav.addObject("personNum", personNum);
		mav.addObject("list_dx", list_dx);
		mav.addObject("list_py", list_py);
		mav.addObject("list_fx", list_fx);
		mav.addObject("list_gz", list_gz);
		mav.addObject("list_qr", list_qr);
		
		return mav;
	}
	
	/**
	 * 邀约砍价
	 * @return
	 */
	@RequestMapping("/wz/kanjia/{inviteId}")
	public ModelAndView kanjia(@PathVariable Long inviteId){
		if(inviteId == null){
			inviteId = 0l;
		}
		
		ModelAndView mav = new ModelAndView("/front/jnh/wz/cpa/index");	
		String content = "";
		String title = "";
		CpaArticle conCpa = cpaService.getCpaArticleByType(2, 1);
		if(conCpa != null){
			content = conCpa.getContent();
		}
		mav.addObject("content", content);	
		CpaArticle titleCpa = cpaService.getCpaArticleByType(3, 1);
		if(conCpa != null){
			title = titleCpa.getContent();
			title = title.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		mav.addObject("title", title);
		mav.addObject("inviteId", inviteId);
		List<CpaUser> rankList = this.getBargainRankingList();
		mav.addObject("rankList", rankList);
		return mav;
	}
	
	/**
	 * 砍价
	 * @return
	 */
	@RequestMapping("/wz/kanjia")
	public ModelAndView kanjia(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/cpa/index");	
		List<CpaUser> rankList = this.getBargainRankingList();
		mav.addObject("rankList", rankList);
		String content = "";
		String title = "";
		CpaArticle conCpa = cpaService.getCpaArticleByType(2, 1);
		if(conCpa != null){
			content = conCpa.getContent();
		}
		mav.addObject("content", content);	
		CpaArticle titleCpa = cpaService.getCpaArticleByType(3, 1);
		if(conCpa != null){
			title = titleCpa.getContent();
			title = title.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		mav.addObject("title", title);
		mav.addObject("inviteId", 0);
		mav.addObject("goodPrice", this.getMaxPrice());
		return mav;
	}
	
	/**
	 * 我要参加
	 * @return
	 */
	@RequestMapping("/wz/join/{inviteId}")
	public ModelAndView join(@PathVariable Long inviteId){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/cpa/wycj");
		String content = "";
		String title = "";
		CpaArticle conCpa = cpaService.getCpaArticleByType(1, 1);
		if(conCpa != null){
			content = conCpa.getContent();
		}
		mav.addObject("content", content);	
		CpaArticle titleCpa = cpaService.getCpaArticleByType(3, 1);
		if(titleCpa != null){
			title = titleCpa.getContent();
			title = title.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		mav.addObject("title", title);
		mav.addObject("inviteId", inviteId);
		return mav;
	}
	
	/**
	 * 我要参与注册
	 * @return
	 */
	@RequestMapping("/wz/register")
	public ModelAndView register(@ModelAttribute CpaUser cpaUser, HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/cpa/cjcg");
		String downloadUrl = "";
		try {
			String userAgentHeader=request.getHeader("user-agent").toUpperCase();
			UserAgent userAgent = UserAgentUtil.getUserAgent(userAgentHeader);
			String playFormType = "";
			if(userAgent != null){
				cpaUser.setBrowserType(userAgent.getBrowserType());
				cpaUser.setBrowserVersion(userAgent.getBrowserVersion());
				cpaUser.setPlatformSeries(userAgent.getPlatformSeries());
				playFormType = userAgent.getPlatformType();
				cpaUser.setPlatformType(playFormType);
				cpaUser.setPlatformVersion(userAgent.getPlatformVersion());
			}else{
				logService.addOperLog("未检测的UA", userAgentHeader, "127.0.0.1", "admin");
			}
			
			CpaUser oldCpaUser = cpaUserService.getUserByPhone(cpaUser.getMobile());
			if(oldCpaUser != null){
				oldCpaUser.setPlatformType(playFormType);
				cpaUserService.update(oldCpaUser);
			}else{
				cpaUser.setNewPrice(this.getMaxPrice());
				cpaUserService.save(cpaUser);
			}
			
			Integer contentType = 0;
			if("IOS".equals(playFormType)|| "IPAD".equals(playFormType) || "IPHONE".equals(playFormType)){
				//ios
				contentType = 4;
			}else if("ANDROID".equals(playFormType)){
				//android
				contentType = 5;
			}else{
				contentType = 5;
			}
			
			if(contentType != 0){
				CpaArticle urlCpa = cpaService.getCpaArticleByType(contentType, 1);
				if(urlCpa != null){
					downloadUrl = urlCpa.getContent();
					downloadUrl = downloadUrl.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		mav.addObject("downloadUrl", downloadUrl);
		mav.addObject("cpaUser", cpaUser);
		
		CpaArticle conCpa = cpaService.getCpaArticleByType(2, 1);
		if(conCpa != null){
			mav.addObject("content", conCpa.getContent());
		}
		
		return mav;
	}
	
	/**
	 * 获取最大价格
	 * @return
	 */
	private Double getMaxPrice(){
		String price = "";
		CpaArticle priceCpa = cpaService.getCpaArticleByType(6, 1);
		if(priceCpa != null){
			price = priceCpa.getContent();
			price = price.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		
		if(StringUtils.isNotBlank(price)){
			return Double.parseDouble(price);
		}
		
		return 4999.99;
	}
	
	/**
	 * 
	 * @param clickType
	 * @param userId 砍价者id
	 * @param beikanUserId 被砍者id
	 * @return
	 */
	@RequestMapping("/wz/kanSelf/{clickType}/{userId}/{beikanUserId}")
	public ModelAndView kanSelf(@PathVariable("clickType") Integer clickType, @PathVariable("userId") Long userId,@PathVariable("beikanUserId") Long beikanUserId, String mobile){
		ModelAndView mav = new ModelAndView();
		List<CpaUser> rankList = this.getBargainRankingList();
		mav.addObject("rankList", rankList);
		boolean isSuccess = false;
		try {
			if(userId == null || userId == 0){
				//要取注册
			}else{
				//砍价
				mav.setViewName("/front/jnh/wz/cpa/index");
				CpaUser cpaUser = cpaUserService.get(userId);
				if(clickType == 1){
					//自砍
					double barginPrice = this.bargain(cpaUser);
					isSuccess = (barginPrice == -1);
					if(isSuccess){
						mav.addObject("barginPrice", barginPrice);
					}
				}else if(clickType == 2){
					//帮砍
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mav.addObject("isSuccess", isSuccess);
		
		return mav;
	}
	
	
	
	private List<CpaUser> getBargainRankingList(){
		List<CpaUser> list = cpaUserService.getBargainRankingList();
		return list;
	}
	
	/**
	 * 我要参加
	 * @return
	 */
	@RequestMapping("/wz/inputPhone/{inviteId}")
	public ModelAndView inputPhone(@PathVariable Long inviteId){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/cpa/inputPhone");
		String title = "";
		CpaArticle titleCpa = cpaService.getCpaArticleByType(3, 1);
		if(titleCpa != null){
			title = titleCpa.getContent();
			title = title.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		mav.addObject("title", title);
		mav.addObject("inviteId", inviteId);
		
		return mav;
	}
	
	/**
	 * 确定砍价
	 * @return
	 */
	@RequestMapping("/wz/confirmBargain/{inviteId}")
	public ModelAndView confirmBargain(@PathVariable Long inviteId, @RequestParam String mobile){
		int result = 0;//1-成功  2-失败 3-没有报名参加 4-没有输入电话号码,5-已砍过
		ModelAndView mav = new ModelAndView();
		String title = "";
		CpaArticle titleCpa = cpaService.getCpaArticleByType(3, 1);
		if(titleCpa != null){
			title = titleCpa.getContent();
			title = title.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		mav.addObject("title", title);
		mav.addObject("inviteId", inviteId);
		if(StringUtils.isBlank(mobile)){
			mav.addObject("result", 4);
			mav.setViewName("/front/jnh/wz/cpa/inputPhone");
			return mav;
		}
		
		CpaUser cpaUser = cpaUserService.getUserByPhone(mobile);
		if(cpaUser == null){
			mav.setViewName("/front/jnh/wz/cpa/inputPhone");
			mav.addObject("result", 3);
			return mav;
		}
		
		//判断是否砍过
		Long userId = cpaUser.getId();
		boolean isBargain = false;
		List<CpaResult> list = this.getCpaResultByUserId(userId);
		if(list != null && list.size() > 0){
			for (CpaResult cpaResult : list) {
				if(cpaResult.getClickPersonId() == userId){
					isBargain = true;
					break;
				}
			}
		}
		
		if(isBargain){
			mav.setViewName("/front/jnh/wz/cpa/inputPhone");
			mav.addObject("result", 5);
			return mav;
		}
		
		double bargainPrice = this.bargain(cpaUser);
		result = (bargainPrice == -1) ? 2 : 1;
		mav.addObject("result", result);
		if(result == 1){
			mav.addObject("cpaUser", cpaUser);
			mav.addObject("bargainPrice", bargainPrice);
			mav.addObject("isSuccess", true);

			mav.setViewName("/front/jnh/wz/cpa/index");
		}else{
			mav.setViewName("/front/jnh/wz/cpa/inputPhone");
		}

		return mav;
	}
	
	/**
	 * 砍价
	 * @param cpaUser 用户信息
	 * @return -1  失败   其他成功
	 */
	private double bargain(CpaUser cpaUser){
		double isSuccess = -1;
		Integer maxPrice = 200;
		CpaResult result = new CpaResult();
		result.setClickPersonId(cpaUser.getId());
		String clickPrice = RandomUtil.randomDouble(maxPrice);
		double clickPriceDouble = Double.parseDouble(clickPrice);
		result.setClickPrice(clickPriceDouble);
		result.setClikcPersonName(cpaUser.getName());
		result.setCpaUserId(cpaUser.getId());
		result.setUserName(cpaUser.getName());
		double nowPrice = cpaUser.getNewPrice() - clickPriceDouble;
		nowPrice = RandomUtil.retainTwoDigits(nowPrice);
		result.setNowPrice(nowPrice);
		double minPrice = cpaUser.getNewPrice();
		//小于则砍价次数用完
		if(minPrice > maxPrice){
			//可以继续砍价
			cpaUser.setNewPrice(nowPrice);
			try {
				cpaUserService.update(cpaUser);
				cpaResultService.save(result);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			isSuccess = clickPriceDouble;
		}
		
		return isSuccess;
	}
	/**
	 * 我要参加
	 * @return
	 */
	@RequestMapping("/wz/clickQuery")
	public ModelAndView clickQuery(){
		ModelAndView mav = new ModelAndView("/front/jnh/wz/cpa/query");
		String title = "";
		CpaArticle titleCpa = cpaService.getCpaArticleByType(3, 1);
		if(titleCpa != null){
			title = titleCpa.getContent();
			title = title.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		mav.addObject("title", title);
		mav.addObject("inviteId", 0);
		return mav;
	}
	
	/**
	 * 确定砍价
	 * @return
	 */
	@RequestMapping("/wz/query")
	public ModelAndView query(@RequestParam String mobile){
		int result = 0;//1-成功  2-查询失败 3-没有报名参加 4-没有输入电话号码
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/front/jnh/wz/cpa/query");
		String title = "";
		CpaArticle titleCpa = cpaService.getCpaArticleByType(3, 1);
		if(titleCpa != null){
			title = titleCpa.getContent();
			title = title.replaceAll("\\&[a-zA-Z]{0,9};", "").replaceAll("<[^>]*>", "");
		}
		mav.addObject("title", title);
		if(StringUtils.isBlank(mobile)){
			mav.addObject("result", 4);
			return mav;
		}
		
		CpaUser cpaUser = cpaUserService.getUserByPhone(mobile);
		if(cpaUser == null){
			mav.addObject("result", 3);
			return mav;
		}

		mav.addObject("cpaUser", cpaUser);
		Long userId = cpaUser.getId();
		List<CpaResult> list = this.getCpaResultByUserId(userId);

		mav.addObject("resultList", list);
		return mav;
	}
	
	private List<CpaResult> getCpaResultByUserId(Long userId){
		List<CpaResult> resultList = cpaResultService.getCpaResultByUserId(userId);
		
		return resultList;
	}
	
	/**
	 * 确定砍价
	 * @return
	 */
	@RequestMapping("/wz/weixinIndex/{index}")
	public ModelAndView weixin_Baidu(@PathVariable String index, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/front/jnh/wz/cpa/weixinIndex");
		logService.addSiteListenerLog("weixin.52jnh.com", "微信营销", ServletUtils.getIpAddr(request), "");
		return mav;
	}
}
