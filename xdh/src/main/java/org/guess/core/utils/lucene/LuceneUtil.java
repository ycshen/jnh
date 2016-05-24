package org.guess.core.utils.lucene;

import javax.servlet.http.HttpServletRequest;

import org.apache.lucene.util.Version;

public class LuceneUtil {
	/**
	 * lucene版本
	 */
	public static Version VERSION = Version.LUCENE_44;
	public final static String SEARCH_FIELD = "content"; //搜索字段
    /**
     * 索引的存放位置 
     * @param request
     * @return
     */
    public static String getIndexStorePath(HttpServletRequest request){
    	String path = request.getSession().getServletContext().getRealPath("/") + "lucene/index/";
    	
		return path;
    }
}
