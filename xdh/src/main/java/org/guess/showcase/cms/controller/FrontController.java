package org.guess.showcase.cms.controller;

import java.net.URLDecoder;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.orm.PageRequest.Sort;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.utils.IpUtil;
import org.guess.core.utils.web.ServletUtils;
import org.guess.showcase.cms.model.Article;
import org.guess.showcase.cms.model.Case;
import org.guess.showcase.cms.model.Category;
import org.guess.showcase.cms.model.Comment;
import org.guess.showcase.cms.model.Gr;
import org.guess.showcase.cms.model.MenuPrice;
import org.guess.showcase.cms.model.Plan;
import org.guess.showcase.cms.model.Recruit;
import org.guess.showcase.cms.model.ServiceItems;
import org.guess.showcase.cms.model.Site;
import org.guess.showcase.cms.model.Style;
import org.guess.showcase.cms.service.ArticleService;
import org.guess.showcase.cms.service.CaseService;
import org.guess.showcase.cms.service.CategoryService;
import org.guess.showcase.cms.service.ClickAppraiseService;
import org.guess.showcase.cms.service.CommentService;
import org.guess.showcase.cms.service.GrService;
import org.guess.showcase.cms.service.MenuPriceService;
import org.guess.showcase.cms.service.PlanService;
import org.guess.showcase.cms.service.RecruitService;
import org.guess.showcase.cms.service.ServiceItemsService;
import org.guess.showcase.cms.service.StyleService;
import org.guess.showcase.cms.util.CmsUtil;
import org.guess.sys.model.User;
import org.guess.sys.service.LogService;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

@Controller
public class FrontController {

	@Autowired
	private ArticleService articleService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private CommentService commentService;
	
	@Autowired
	private RecruitService recruitService;
	@Autowired
	private ServiceItemsService serviceItemsService;
	
	@Autowired 
	private UserService userService;
	@Autowired 
	private GrService grService;
	@Autowired 
	private StyleService styleService;
	@Autowired 
	private MenuPriceService menuPriceService;
	@Autowired
	private CaseService caseService;
	@Autowired
	private PlanService planService;
	@Autowired
	private LogService logService;
	@Autowired
	private ClickAppraiseService appraiseService;
	// 首页
	@RequestMapping("{site}/index.html")
	public String index(@PathVariable("site") String site, HttpServletRequest request) {
		logService.addSiteListenerLog("www.52jnh.com", "嘉年华婚礼创意馆", ServletUtils.getIpAddr(request), "");
		return "/front/" + site + "/index";
	}
	
	// 人才搜索
	@RequestMapping("{site}/search/{type}.html")
	public ModelAndView search(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("type") Long type, HttpServletRequest request)
			throws Exception {
		//String companyType = request.getParameter("companyType");
		String pro = request.getParameter("pro");
		String city = request.getParameter("city");
		String position = request.getParameter("position");
		String name = request.getParameter("name");
		if(type == 1){
			List<PropertyFilter> orfilters = Lists.newArrayList();

			orfilters.add(new PropertyFilter("EQS_status", "1"));
			if(!"".equals(pro) || !"".equals(city) ){
				orfilters.add(new PropertyFilter("EQS_place",  pro + city));
			}
			
			if(!"".equals(position)){
				orfilters.add(new PropertyFilter("EQS_position",  position));
			}
			
			if(!"".equals(name)){
				orfilters.add(new PropertyFilter("LIKES_company",  name));
			}
			
			PageRequest page = new PageRequest(0, 15);
			Page<Recruit> pageData = recruitService.findPage(page, orfilters);
			page.setOrderBy("id");
			page.setOrderDir(Sort.DESC);
			
			mav.addObject("page", pageData);
			mav.setViewName("/front/" + site + "/rczp/rcsslist");
			return mav;
		}else{
			List<PropertyFilter> orfilters = Lists.newArrayList();

			orfilters.add(new PropertyFilter("EQS_status", "1"));
			if(!"".equals(pro) || !"".equals(city) ){
				orfilters.add(new PropertyFilter("EQS_place",  pro + city));
			}
			
			if(!"".equals(position)){
				orfilters.add(new PropertyFilter("EQS_position",  position));
			}
			
			if(!"".equals(name)){
				orfilters.add(new PropertyFilter("LIKES_myname",  name));
			}
			
			PageRequest page = new PageRequest(0, 15);
			Page<Gr> pageData = grService.findPage(page, orfilters);
			page.setOrderBy("id");
			page.setOrderDir(Sort.DESC);
			
			mav.addObject("page", pageData);
			mav.setViewName("/front/" + site + "/rczp/qzsslist");
			return mav;
		}
		
	}
	
	// 人才招聘
	@RequestMapping("{site}/rc.html")
	public ModelAndView rc(ModelAndView mav,@PathVariable("site") String site) {
		List<PropertyFilter> orfilters = Lists.newArrayList();
		List<PropertyFilter> orfilters1 = Lists.newArrayList();
		List<PropertyFilter> orfilters2 = Lists.newArrayList();
		List<PropertyFilter> orfilters3 = Lists.newArrayList();
		List<PropertyFilter> orfilters4 = Lists.newArrayList();
		List<PropertyFilter> orfilters5 = Lists.newArrayList();
		PageRequest page = new PageRequest(0, 15);
		page.setOrderBy("id");
		page.setOrderDir(Sort.DESC);
		
		orfilters.add(new PropertyFilter("EQS_companyType", "0"));
		orfilters.add(new PropertyFilter("EQS_status", "1"));
		orfilters1.add(new PropertyFilter("EQS_companyType", "1"));
		orfilters1.add(new PropertyFilter("EQS_status", "1"));
		orfilters2.add(new PropertyFilter("EQS_companyType", "2"));
		orfilters2.add(new PropertyFilter("EQS_status", "1"));
		

		orfilters3.add(new PropertyFilter("EQS_status", "1"));
		orfilters3.add(new PropertyFilter("EQS_companyType", "0"));
		

		orfilters4.add(new PropertyFilter("EQS_status", "1"));
		orfilters4.add(new PropertyFilter("EQS_companyType", "1"));
		
		orfilters5.add(new PropertyFilter("EQS_status", "1"));
		orfilters5.add(new PropertyFilter("EQS_companyType", "2"));
		
		Page<Recruit> pageData0 = recruitService.findPage(page, orfilters);
		Page<Recruit> pageData1 = recruitService.findPage(page, orfilters1);
		Page<Recruit> pageData2 = recruitService.findPage(page, orfilters2);
		Page<Gr> pageData3 = grService.findPage(page, orfilters3);

		Page<Gr> pageData4 = grService.findPage(page, orfilters4);

		Page<Gr> pageData5 = grService.findPage(page, orfilters5);
		mav.addObject("page0", pageData0);
		mav.addObject("page1", pageData1);
		mav.addObject("page2", pageData2);
		mav.addObject("page3", pageData3);
		mav.addObject("page4", pageData4);
		mav.addObject("page5", pageData5);
		mav.setViewName("/front/" + site + "/rczp/rc");
		return mav;
	}
	
	// 人才招聘
	@RequestMapping("{site}/zc.html")
	public String zc(@PathVariable("site") String site) {
		return "/front/" + site + "/rczp/zc";
	}
	
	@RequestMapping("{site}/qyzc.html")
	public String qyzc(@PathVariable("site") String site) {
		return "/front/" + site + "/rczp/qyzc";
	}
	
	// 文章详细内容
	@RequestMapping("{site}/article/{aid}.html")
	public ModelAndView detail(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("aid") Long aid)
			throws Exception {
		Article article = articleService.get(aid);
		if (null == article) {
			mav.setViewName("redirect:/errorpage/404.jsp");
			return mav;
		}

		// 增加点击量
		articleService.addHits(article);
		mav.addObject("obj", article);
		mav.addObject("category", article.getCategory().getParent());
		mav.setViewName("/front/" + site + "/detail");
		mav.addObject("jnhTitle",  article.getTitle() + "-");
		
		List<String> labelList = new LinkedList<String>();
		String labels = article.getKeywords();
		String[] labelArray = labels.split("\\,");
		for(String label : labelArray){
			labelList.add(label);
		}
		
		mav.addObject("labelList", labelList);
		
		return mav;
	}
	
	// 文章详细内容
		@RequestMapping("{site}/caseshow/{aid}.html")
		public ModelAndView caseShowDetail(ModelAndView mav,
				@PathVariable("site") String site, @PathVariable("aid") Long aid)
				throws Exception {
			Article article = articleService.get(aid);
			if (null == article) {
				mav.setViewName("redirect:/errorpage/404.jsp");
				return mav;
			}

			// 增加点击量
			articleService.addHits(article);
			mav.addObject("obj", article);
			mav.addObject("category", article.getCategory().getParent());
			mav.setViewName("/front/" + site + "/caseShowDetail");
			mav.addObject("jnhTitle",  article.getTitle() + "-");
			return mav;
		}
		
	// 文章详细内容
	@RequestMapping("{site}/imgarticle/{aid}.html")
	public ModelAndView imgdetail(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("aid") Long aid)
			throws Exception {
		Article article = articleService.get(aid);
		if (null == article) {
			mav.setViewName("redirect:/errorpage/404.jsp");
			return mav;
		}

		// 增加点击量
		articleService.addHits(article);
		mav.addObject("obj", article);
		mav.addObject("category", article.getCategory().getParent());
		mav.setViewName("/front/" + site + "/imgdetail");
		mav.addObject("jnhTitle", article.getTitle() + "-");
		return mav;
	}

	// 招聘人才内容
	@RequestMapping("{site}/rcdetail/{id}.html")
	public ModelAndView rcdetail(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("id") Long id)
			throws Exception {
		Recruit rc = recruitService.get(id);
		if (null == rc) {
			mav.setViewName("redirect:/errorpage/404.jsp");
			return mav;
		}

		User user = userService.findByLoginId(rc.getLoginId());
		mav.addObject("user", user);
		rc.setHits(rc.getHits() + 1);
		recruitService.update(rc);
		mav.addObject("obj", rc);
		mav.setViewName("/front/" + site + "/rczp/rcdetail");
		return mav;
	}
	
	// 招聘人才内容
	@RequestMapping("{site}/grdetail/{id}.html")
	public ModelAndView grdetail(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("id") Long id)
			throws Exception {
		Gr gr = grService.get(id);
		if (null == gr) {
			mav.setViewName("redirect:/errorpage/404.jsp");
			return mav;
		}

		User user = userService.findByLoginId(gr.getLoginId());
		mav.addObject("user", user);
		// 增加点击量
		gr.setHits(gr.getHits() + 1);
		grService.update(gr);
		mav.addObject("obj", gr);
		mav.setViewName("/front/" + site + "/rczp/grdetail");
		return mav;
	}
	
	/**
	 * 根据栏目获取列表
	 * 
	 * @param mav
	 * @param site
	 * @param cid
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/caseshow/caseshow.html")
	public ModelAndView caseShow(ModelAndView mav,
			@PathVariable("site") String site, 
			@RequestParam(value="p",required=false,defaultValue="1") int p,
			@RequestParam(value="cid") long cid
			)
			throws Exception {
		Category category = categoryService.get(cid);
		Set<String> cids = categoryService.getChlidIdsById(String.valueOf(cid));
		List<PropertyFilter> filters = Lists.newArrayList();
		for (String id : cids) {
			filters.add(new PropertyFilter("EQL_category.id", id));
		}
		List<PropertyFilter> andfilters = Lists.newArrayList();
		PageRequest pageRequest = new PageRequest(p, 12);
		pageRequest.setOrderDir(Sort.DESC);
		pageRequest.setOrderBy("createDate");
		
		Page<Article> pageData = articleService.findPage(pageRequest,
				andfilters, filters);
		mav.addObject("page", pageData);
		if(category.getGrade()  == 1){
			mav.addObject("category", category);
		}else if(category.getGrade() == 2){
			mav.addObject("category", category.getParent());
		}
		
		mav.setViewName("/front/" + site + "/caseShow");
		mav.addObject("p", p);
		mav.addObject("cid", cid);
		mav.addObject("pr", pageData.isFirstPage()?p:p-1);
		mav.addObject("pn", pageData.isLastPage()?p:p+1);
		mav.addObject("pp", pageData.getTotalPages());

		mav.addObject("jnhTitle", "案列展示-");
		return mav;
	}
	
	/**
	 * 根据栏目获取列表
	 * 
	 * @param mav
	 * @param site
	 * @param cid
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/list/{cid}.html")
	public ModelAndView list(ModelAndView mav,
			@PathVariable("site") String site, 
			@PathVariable("cid") Long cid,
			@RequestParam(value="p",required=false,defaultValue="1") int p
			)
			throws Exception {
		Category category = categoryService.get(cid);
		Set<String> cids = categoryService.getChlidIdsById(String.valueOf(cid));
		List<PropertyFilter> filters = Lists.newArrayList();
		for (String id : cids) {
			filters.add(new PropertyFilter("EQL_category.id", id));
		}
		List<PropertyFilter> andfilters = Lists.newArrayList();
		PageRequest pageRequest = new PageRequest(p, 12);
		pageRequest.setOrderDir(Sort.DESC);
		pageRequest.setOrderBy("createDate");
		
		Page<Article> pageData = articleService.findPage(pageRequest,
				andfilters, filters);
		mav.addObject("page", pageData);
		if(category.getGrade()  == 1){
			mav.addObject("category", category);
		}else if(category.getGrade() == 2){
			mav.addObject("category", category.getParent());
		}
		mav.setViewName("/front/" + site + "/list");
		mav.addObject("cid", cid);
		mav.addObject("p", p);
		mav.addObject("pr", pageData.isFirstPage()?p:p-1);
		mav.addObject("pn", pageData.isLastPage()?p:p+1);
		mav.addObject("pp", pageData.getTotalPages());
		return mav;
	}
	
	/**
	 * 根据栏目获取列表
	 * 
	 * @param mav
	 * @param site
	 * @param cid
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/imglist/{cid}.html")
	public ModelAndView imglist(ModelAndView mav,
			@PathVariable("site") String site, 
			@PathVariable("cid") Long cid,
			@RequestParam(value="p",required=false,defaultValue="1") int p
			)
			throws Exception {
		Category category = categoryService.get(cid);
		Set<String> cids = categoryService.getChlidIdsById(String.valueOf(cid));
		List<PropertyFilter> filters = Lists.newArrayList();
		for (String id : cids) {
			filters.add(new PropertyFilter("EQL_category.id", id));
		}
		List<PropertyFilter> andfilters = Lists.newArrayList();
		PageRequest pageRequest = new PageRequest(p, 12);
		pageRequest.setOrderDir(Sort.DESC);
		pageRequest.setOrderBy("createDate");
		
		Page<Article> pageData = articleService.findPage(pageRequest,
				andfilters, filters);
		mav.addObject("page", pageData);
		if(category.getGrade()  == 1){
			mav.addObject("category", category);
		}else if(category.getGrade() == 2){
			mav.addObject("category", category.getParent());
		}
		mav.setViewName("/front/" + site + "/imglist");
		mav.addObject("cid", cid);
		mav.addObject("p", p);
		mav.addObject("pr", pageData.isFirstPage()?p:p-1);
		mav.addObject("pn", pageData.isLastPage()?p:p+1);
		mav.addObject("pp", pageData.getTotalPages());
		mav.addObject("jnhTitle", "合作酒店-");
		return mav;
	}
	
	/**
	 * 根据栏目获取列表
	 * 
	 * @param mav
	 * @param site
	 * @param cid
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/images/{cid}.html")
	public ModelAndView images(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("cid") Long cid)
			throws Exception {
		mav.setViewName("/front/" + site + "/images");
		return mav;
	}

	/**
	 * 根据标签获取列表
	 * 
	 * @param mav
	 * @param site
	 * @param tag
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/tag/{tag}.html")
	public ModelAndView tag(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("tag") String tag)
			throws Exception {
		String decodeTag = URLDecoder.decode(tag, "utf-8");
		List<PropertyFilter> filters = Lists.newArrayList();
		filters.add(new PropertyFilter("LIKES_keywords", decodeTag));
		List<Article> articles = articleService.find(filters);

		mav.addObject("articles", articles);
		mav.addObject("tag", decodeTag);

		mav.setViewName("/front/" + site + "/list");
		return mav;
	}

	/**
	 * 获取最热文章
	 */
	@RequestMapping("{site}/showHots")
	@ResponseBody
	public List<Article> showHots(HttpServletRequest request) {
		return articleService.listHots(CmsUtil.getCurrentSite(request));
	}

	/**
	 * 获取标签
	 */
	@RequestMapping("{site}/getTags")
	@ResponseBody
	public Set<String> getTags(HttpServletRequest request) {
		return articleService.listTags(CmsUtil.getCurrentSite(request));
	}

	/**
	 * 评论文章
	 * 
	 * @throws Exception
	 */
	@RequestMapping(value="{site}/comment",method=RequestMethod.GET)
	public ModelAndView comment(ModelAndView mav,Comment comment, @PathVariable("site") String site,
			HttpServletRequest request) throws Exception {
		Category category = categoryService.findUniqueBy("name", "公司概况");
		mav.addObject("category", category);
		mav.setViewName("/front/" + site + "/comment");
		return mav;
	}
	
	/**
	 * 评论文章
	 * 
	 * @throws Exception
	 */
	@RequestMapping(value="{site}/comment",method=RequestMethod.POST)
	@ResponseBody
	public String comments(Comment comment, @PathVariable("site") String site,
			HttpServletRequest request) throws Exception {
		commentService.save(comment);
		return "ok";
	}

	/**
	 * 文章分页查看
	 */
	@RequestMapping("{site}/page/{pageNo}")
	public ModelAndView page(ModelAndView mav,
			@PathVariable("site") String site,
			@PathVariable("pageNo") int pageNo, HttpServletRequest request)
			throws Exception {
		Page<Article> p = new Page<Article>(new PageRequest(pageNo, 10));
		CmsUtil.changeSite(request, site);
		Site curSite = CmsUtil.getCurrentSite(request);
		Page<Article> page = articleService.listIndexs(curSite, p);
		mav.addObject("datas", page.getResult());
		mav.addObject("sliders", page.getSlider(20));
		mav.addObject("curNo", pageNo);
		mav.setViewName("/front/" + site + "/page");
		return mav;
	}
	
	/**
	 * 根据栏目获取列表
	 * 
	 * @param mav
	 * @param site
	 * @param cid
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/rclist/{cid}.html")
	public ModelAndView rclist(ModelAndView mav,
			@PathVariable("site") String site, 
			@PathVariable("cid") Long cid,
			@RequestParam(value="p",required=false,defaultValue="1") int p
			)
			throws Exception {
		if(cid == 4){
			List<PropertyFilter> filters = Lists.newArrayList();
			PageRequest pageRequest = new PageRequest(p, 30);
			pageRequest.setOrderDir(Sort.DESC);
			pageRequest.setOrderBy("createDate");
			
			Page<Gr> pageData = grService.findPage(pageRequest, filters);
			mav.addObject("page", pageData);
			mav.setViewName("/front/" + site + "/rczp/qzlist");
			mav.addObject("cid", cid);
			mav.addObject("p", p);
			mav.addObject("pr", pageData.isFirstPage()?p:p-1);
			mav.addObject("pn", pageData.isLastPage()?p:p+1);
			mav.addObject("pp", pageData.getTotalPages());
			return mav;
		}
		
		
		List<PropertyFilter> filters = Lists.newArrayList();
		if(cid == 1){
			filters.add(new PropertyFilter("EQS_companyType", "0"));
		}else if(cid == 2){
			filters.add(new PropertyFilter("EQS_companyType", "1"));
		}else if(cid == 3){
			filters.add(new PropertyFilter("EQS_companyType", "2"));
		}else{
			filters.add(new PropertyFilter("EQS_companyType", "0"));
		}
		
		PageRequest pageRequest = new PageRequest(p, 30);
		pageRequest.setOrderDir(Sort.DESC);
		pageRequest.setOrderBy("createDate");
		
		Page<Recruit> pageData = recruitService.findPage(pageRequest, filters);
		mav.addObject("page", pageData);
		mav.setViewName("/front/" + site + "/rczp/rclist");
		mav.addObject("cid", cid);
		mav.addObject("p", p);
		mav.addObject("pr", pageData.isFirstPage()?p:p-1);
		mav.addObject("pn", pageData.isLastPage()?p:p+1);
		mav.addObject("pp", pageData.getTotalPages());
		return mav;
	}
	
	// 风格加载
	@RequestMapping("{site}/styledetail/{styleType}.html")
	public ModelAndView styledetail(ModelAndView mav,
			@PathVariable("site") String site, @PathVariable("styleType") String styleType)
			throws Exception {
		Style style = styleService.getStyleByStausAndStyleType("1", styleType);
		// 增加点击量
		styleService.addHits(style);
		mav.addObject("obj", style);
		mav.setViewName("/front/" + site + "/styledetail");
		return mav;
	}
	
	/**
	 * 套餐报价
	 * @param site 站点名称
	 * @param menuId 菜单ID
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/{menuType}Price/{menuId}.html")
	public ModelAndView menuPrivce(
			@PathVariable("site") String site, 
			@PathVariable(value="menuId") String menuId,
			@PathVariable(value="menuType") String menuType
			)
			throws Exception {
		String menu_type = "0";
		if("shoot".equals(menuType)){
			menu_type = "1";
		}
		ModelAndView mav = new ModelAndView("/front/" + site + "/weddingMenu/" + menuType +  "Menu");
		List<PropertyFilter> filters = Lists.newArrayList();
		filters.add(new PropertyFilter("EQI_menuType", menu_type));
		List<MenuPrice> menuPriceList = menuPriceService.find(filters);
		mav.addObject("menuPriceList", menuPriceList);
		//对应id的方案
		MenuPrice menuPrice = menuPriceService.get((Long.parseLong(menuId)));
		mav.addObject("menuPrice", menuPrice);
		//方案对应的模块
		List<Case> caseList = caseService.findAllCaseByMenuPriceId(Integer.parseInt(menuId));
		mav.addObject("caseList", caseList);
		mav.addObject("jnhTitle", menuPrice.getMenuName() + "-");
		return mav;
	}
	
	/**
	 * 婚庆报价详细清单
	 * @param site 站点名称
	 * @param menuId 菜单ID
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("{site}/weddingPrice/jnhMenu.html")
	public ModelAndView totleWeddingMenu(@PathVariable("site") String site){
		ModelAndView mav = new ModelAndView("/front/" + site + "/weddingMenu/totleWeddingMenu");
		mav.addObject("jnhTitle", "婚礼策划报价详细清单，婚庆报价详细清单-");
		return mav;
	}
	
	/**
	 * 服务项目
	 * @param site
	 * @return
	 */
	@RequestMapping("{site}/serviceItem/serviceItemDetail{id}.html")
	public ModelAndView serviceItemDetail(@PathVariable("site") String site, @PathVariable("id") int id){
		ModelAndView mav = new ModelAndView("/front/" + site + "/serviceItem/serviceItemsDetail");
		List<ServiceItems> serviceItemsList = serviceItemsService.findAllSerivceItemsByParentId(0);
		try {
			List<ServiceItems> itemsList = serviceItemsService.findAllSerivceItemsByParentId(id);
			ServiceItems oldServiceItems = serviceItemsService.get(Long.parseLong(id + ""));
			mav.addObject("itemsList", itemsList);
			mav.addObject("oldServiceItems", oldServiceItems);
			mav.addObject("jnhTitle", "服务项目-" + oldServiceItems.getServiceItemsName() + "-");
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("serviceItemsList", serviceItemsList);
		return mav;
	}
	
	@RequestMapping("{site}/plan/plan.html")
	public ModelAndView plan(@PathVariable("site") String site, @ModelAttribute Plan planQuery){
		ModelAndView mav = new ModelAndView("/front/" + site + "/plan/plan");
		String queryMan = planQuery.getMan();
		Plan plan = null;
		if(StringUtils.isNotBlank(queryMan)){
			plan = planService.findByManOrWomen(queryMan);
		}

		mav.addObject("plan", plan);
		mav.addObject("planQuery", planQuery);
		mav.addObject("jnhTitle", "档期查询-");
		
		return mav;
	}
	
	/**
	 * 点击评价
	 * @param id
	 * @return
	 */
	@RequestMapping("blog/appraise/{tableName}/{articleId}/{type}")
	@ResponseBody
	public void appraise(HttpServletRequest request, @PathVariable("tableName") String tableName, @PathVariable("articleId") Long articleId, @PathVariable("type") Integer type){
		tableName = "t_" + tableName;
		try{
			appraiseService.clickAppraise(type, tableName, articleId);
		}catch(Exception e){
			logService.addExceptionLog("点击评价异常", "点击评价异常:" + e.getMessage(), IpUtil.getIpAddr(request), "游客");
		}
		
	}
}
