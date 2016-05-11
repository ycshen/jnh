package org.guess.core.utils;

import javax.servlet.http.HttpServletRequest;

import org.guess.showcase.cms.model.SinaIpInfo;
import org.guess.showcase.cms.util.CmsConstants;

import com.google.gson.Gson;

/**
 * @author 申鱼川 E-mail:shenyuchuan@xiaojiuwo.cn
 * @version 创建时间：2015年11月27日 上午10:57:40
 * 
 */
public class IpUtil {
	/**
	 * nginx代理和不能获取getRemoteAddr不能获取真实ip，用一下方法
	 */
	public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
	}
	
	/**
	 * 根据ip获取新浪ip信息
	 * @param ip
	 * @return
	 */
	public static SinaIpInfo getSinaIpInfo(String ip){
		String url = CmsConstants.query_ip_sina + ip;
		String returnInfo = HttpUtil.getUrl(url);
		if("-2".equals(returnInfo) || !returnInfo.contains("=")){
			return new SinaIpInfo();
		}

		String jsonSinaIpInfo = returnInfo.split("\\= ")[1];
		SinaIpInfo sinaIpInfo = new Gson().fromJson(jsonSinaIpInfo.substring(0, jsonSinaIpInfo.length() - 1), SinaIpInfo.class);
		sinaIpInfo.setCountry(new String(sinaIpInfo.getCountry()));
		sinaIpInfo.setProvince(new String(sinaIpInfo.getProvince()));
		sinaIpInfo.setCity(new String(sinaIpInfo.getCity()));
		
		return sinaIpInfo;
	}
}
