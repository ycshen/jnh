package org.guess.core.utils.lucene;

import org.apache.lucene.util.Version;

public class LuceneUtil {
	/**
	 * lucene版本
	 */
	public static Version version = Version.LUCENE_44;
	public final static String SEARCH_FIELD = "conent"; //搜索字段
    public final static String INDEX_STORE_PATH = "D:\\lucene\\index"; //索引的存放位置 
}
