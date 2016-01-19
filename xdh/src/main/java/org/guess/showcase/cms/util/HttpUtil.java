/** * HttpUtil.java 
* Created on 2015年6月26日 下午2:45:22 
*/

package org.guess.showcase.cms.util;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.client.RestTemplate;

/** 
 * <p>Project: crm</p> 
 * <p>Title: HttpUtil.java</p> 
 * <p>Description:  </p> 
 * <p>Copyright (c) 2015 xjw Consultancy Services</p>
 * <p>All Rights Reserved.</p>
 * @author <a href="mailto:yujingu@52jnh.com">申鱼川</a>
 */

public class HttpUtil {
	
	/**
	 * 得到http服务器返回字符串参数
	 * @param url
	 * @return
	 */
	public static String getUrl(String url) {
		RestTemplate restTemplate = new RestTemplate();
		String result = restTemplate.getForObject(url, String.class);
		return result;
	}
	
	/**
	 * 发送post请求返回字符串
	 * @param url post-URL:
	 * @param postData post的数据
	 * @return 返回post请求响应的数据
	 */
	public static String postUrl(String url, String postData){
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
        MediaType type = MediaType.parseMediaType("application/json; charset=UTF-8");
        headers.setContentType(type);
        headers.add("Accept", MediaType.APPLICATION_JSON.toString());        
        HttpEntity<String> formEntity = new HttpEntity<String>(postData, headers);

        return restTemplate.postForObject(url, formEntity, String.class);
		
	}
}
