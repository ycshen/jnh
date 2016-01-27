package org.guess.showcase.cms.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.utils.FileUtils;
import org.guess.showcase.cms.model.Article;
import org.guess.showcase.cms.util.CmsConstants;
import org.guess.showcase.cms.util.CmsUtil;
import org.guess.showcase.cms.util.IpUtil;
import org.guess.sys.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConfigController {
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private LogService logService;
	/**
	 * 跳转到Scroll滚动图片更新编辑页面
	 * @return
	 */
	@RequestMapping("other/config/updateBannerImage")
	public ModelAndView updateBannerImage(){
		ModelAndView mav = new ModelAndView("/cms/config/updateBannerImage");
		return mav;
	}
	
	/**
	 * 更新首页Scroll图片
	 * @param mav
	 * @param imgFile
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/other/config/updateScrollImage")
	public ModelAndView updateScrollImage(@RequestParam(value = "imgFile", required = false) MultipartFile imgFile)
			throws Exception {
		ModelAndView mav = new ModelAndView("/cms/config/updateBannerImage");
		if (!imgFile.isEmpty()) {
			
			File file = new File(CmsUtil.getScrollImgPath(request) + "/scroll_3.png");
			file.delete();
			renameFile("scroll_2.png", "scroll_3.png");
			renameFile("scroll_1.png", "scroll_2.png");
			File imgFilePath = new File(CmsUtil.getScrollImgPath(request) + "/scroll_1.png");
			mav.addObject("result", "更新Scroll图片成功！");
			imgFile.transferTo(imgFilePath);
		}else{
			mav.addObject("result", "请选择需要更新的图片！");
		}
		
		return mav;
	}
	
	/**
	 * 重命名文件
	 * @param oldName
	 * @param newName
	 */
	private void renameFile(String oldName, String newName){
		 if(!oldName.equals(newName)){//新的文件名和以前文件名不同时,才有必要进行重命名 
	            File oldfile=new File(CmsUtil.getScrollImgPath(request) + "/"+oldName); 
	            File newfile=new File(CmsUtil.getScrollImgPath(request) + "/"+newName); 
	            if(!oldfile.exists()){
	                return;//重命名文件不存在
	            }
	            
	            if(newfile.exists()) {//若在该目录下已经有一个文件和新文件名相同，则不允许重命名 
	            	logService.addListenerLog("更新Scroll图片", "更新Scroll图片，图片已经存在", IpUtil.getIpAddr(request), "管理员");
	            }
	            else{ 
	                oldfile.renameTo(newfile); 
	            } 
	        }else{
	            System.out.println("新文件名和旧文件名相同...");
	        }
	}
}
