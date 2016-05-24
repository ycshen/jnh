package org.guess.core.utils.lucene;

import java.io.File;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.guess.showcase.blog.model.SearchResult;

public class LuceneSearcher {
	public static String indexDir = null;
	public static Analyzer analyzer = null;
	public static Directory directory = null;
	public static IndexWriter indexWriter = null;

	/**
	 * 查询索引
	 * @param request 请求
	 * @param queryString 查询字符串
	 * @return 返回查询结果
	 * @throws Exception 异常
	 */
	public static List<SearchResult> queryIndex(HttpServletRequest request, String queryString) throws Exception{
		indexDir = LuceneUtil.getIndexStorePath(request);
		analyzer = initAnalyzer();
        directory = FSDirectory.open(new File(indexDir));
        IndexReader indexReader = DirectoryReader.open(directory);
        IndexSearcher indexSearcher = new IndexSearcher(indexReader);
        QueryParser parser = new QueryParser(LuceneUtil.VERSION, LuceneUtil.SEARCH_FIELD, analyzer);
        Query query = parser.parse(queryString);
        ScoreDoc[] scoreDocs = indexSearcher.search(query, null, 1000).scoreDocs;
        List<SearchResult> resultList = new LinkedList<SearchResult>();
        SearchResult searchResult = null;
        for (ScoreDoc scoreDoc : scoreDocs) {
        	searchResult = new SearchResult();
        	Document hitDoc = indexSearcher.doc(scoreDoc.doc);
        	String id = hitDoc.get("id");
        	String title = hitDoc.get("title");
        	String desc = hitDoc.get("desc");
        	searchResult.setId(id);
        	searchResult.setResultDesc(desc);
        	searchResult.setResultTitle(title);
        	resultList.add(searchResult);
		}
        
        indexReader.close();
        directory.close();
        
        return resultList;
	}
	
	/**
	 * 初始化分词器
	 * @return
	 */
	private static Analyzer initAnalyzer(){
		Analyzer analyzer = new StandardAnalyzer(LuceneUtil.VERSION);
		//Analyzer analyzer = new 
		return analyzer;
	}
	
	/**
	 * 添加索引
	 * @param request
	 * @param searchResult 添加结果
	 * @throws Exception
	 */
	public static void addIndex(HttpServletRequest request, SearchResult searchResult) throws Exception{
		analyzer = initAnalyzer();
		indexDir = LuceneUtil.getIndexStorePath(request);
        directory = FSDirectory.open(new File(indexDir));
        String id = searchResult.getId();
        String content = searchResult.getResultContent();
        String desc = searchResult.getResultDesc();
        String title = searchResult.getResultTitle();
        IndexWriterConfig config = new IndexWriterConfig(LuceneUtil.VERSION, analyzer);
        indexWriter = new IndexWriter(directory, config);
        Document doc = new Document();
        doc.add(new TextField("id", id, Store.YES));
        doc.add(new TextField("content", content, Store.YES));
        doc.add(new TextField("desc", desc, Store.YES));
        doc.add(new TextField("title", title, Store.YES));
        indexWriter.addDocument(doc);
        indexWriter.commit();
        indexWriter.close();
	}
	
	/**
	 * 更新索引
	 * @param request
	 * @param searchResult
	 * @throws Exception
	 */
    public static void updateIndex(HttpServletRequest request, SearchResult searchResult) throws Exception {
		analyzer = initAnalyzer();
		indexDir = LuceneUtil.getIndexStorePath(request);
		directory = FSDirectory.open(new File(indexDir));
		IndexWriterConfig config = new IndexWriterConfig(LuceneUtil.VERSION, analyzer);
		indexWriter = new IndexWriter(directory, config); 
		String id = searchResult.getId();
	    String content = searchResult.getResultContent();
	    String desc = searchResult.getResultDesc();
	    String title = searchResult.getResultTitle();
		Document doc = new Document();
		doc.add(new TextField("id", id, Store.YES));
        doc.add(new TextField("content", content, Store.YES));
        doc.add(new TextField("desc", desc, Store.YES));
        doc.add(new TextField("title", title, Store.YES));
		
		indexWriter.updateDocument(new Term("id", id), doc);
		indexWriter.close();
    }
    
	/**
	 * 删除索引
	 * @param request
	 * @param searchResult
	 * @throws Exception
	 */
    public static void deleteIndex(HttpServletRequest request, SearchResult searchResult) throws Exception {
        analyzer = initAnalyzer();
        indexDir = LuceneUtil.getIndexStorePath(request);
        directory = FSDirectory.open(new File(indexDir));
        IndexWriterConfig config = new IndexWriterConfig(LuceneUtil.VERSION, analyzer);
        indexWriter = new IndexWriter(directory, config);
        String id = searchResult.getId();
        indexWriter.deleteDocuments(new Term("id", id));  
        indexWriter.close();
    }
	
	/**
	 * 批量建立索引
	 * @param request
	 * @param list
	 * @throws Exception
	 */
    public static void batchAddIndex(HttpServletRequest request, List<SearchResult> list) throws Exception {
        if(list != null && list.size() > 0){
        	for (SearchResult searchResult : list) {
				addIndex(request, searchResult);
			}
        }
    }
}
