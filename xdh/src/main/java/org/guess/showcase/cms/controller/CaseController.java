package org.guess.showcase.cms.controller;

import java.util.LinkedList;
import java.util.List;

import org.guess.core.web.BaseController;
import org.guess.showcase.cms.model.Case;
import org.guess.showcase.cms.service.CaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cms/case")
public class CaseController extends BaseController<Case>{
	{
		editView = "/cms/menuPrice/editCase";
		listView = "/cms/menuPrice/show";
		showView = "/cms/menuPrice/show";
	}

	@Autowired
	private CaseService caseService;

	@RequestMapping(method = RequestMethod.GET, value = "/addCaseModel/{menuId}/{type}")
	public ModelAndView addCaseModel(@PathVariable("menuId") int menuId, @PathVariable("type") int type){
		ModelAndView mav = new ModelAndView("/cms/menuPrice/editCase");
		Case casez = new Case();
		casez.setMenuPriceId(menuId);
		List<String> caseTypeList = null;
		if(type == 0){
			caseTypeList = this.getWeddingSelectValue();
		}else{
			caseTypeList = this.getShootSelectValue();
		}
		mav.addObject("caseTypeList", caseTypeList);
		mav.addObject("obj", casez);
		mav.addObject("menuId", menuId);
		
		return mav;
	}
	
	/**
	 * 初始化婚庆selectValue
	 * @return 返回婚庆select
	 */
	private List<String> getWeddingSelectValue(){
		List<String> list = new LinkedList<String>();
		list.add("舞台区通道");
		list.add("签到区");
		list.add("舞美灯光");
		list.add("赠送项目");
		list.add("人员");
		list.add("备注");
		
		return list;
	}
	
	/**
	 * 初始化婚纱摄影selectValue
	 * @return 返回婚庆select
	 */
	private List<String> getShootSelectValue(){
		List<String> list = new LinkedList<String>();
		list.add("拍摄模式");
		list.add("拍摄场地");
		list.add("拍摄服装");
		list.add("拍摄底片");
		list.add("附赠成品");
		list.add("免费提供");
		list.add("客人自费");
		
		return list;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/editCase")
	public String create(@ModelAttribute("cases") Case cases) {
		Case oldCase = caseService.findCaseByCaseType(cases.getCaseType(), cases.getMenuPriceId());
		try {
			if(oldCase == null){
				caseService.save(cases);
			}else{
				oldCase.setCaseType(cases.getCaseType());
				oldCase.setContent(cases.getContent());
				oldCase.setSort(cases.getSort());
				caseService.update(oldCase);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return REDIRECT + "/cms/menuPrice/show/" + cases.getMenuPriceId();
	}
	
	/**
	 * 跳转到更新页面
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/update/{id}/{type}")
	public ModelAndView update(@PathVariable("id") Long id, @PathVariable("type") int type) throws Exception {
		Case obj = caseService.get(id);
		ModelAndView mav = new ModelAndView(editView);
		List<String> caseTypeList = null;
		if(type == 0){
			caseTypeList = this.getWeddingSelectValue();
		}else{
			caseTypeList = this.getShootSelectValue();
		}
		mav.addObject("caseTypeList", caseTypeList);
		
		mav.addObject("obj", obj);
		return mav;
	}

}