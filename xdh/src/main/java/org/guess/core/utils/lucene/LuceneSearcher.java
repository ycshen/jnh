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
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.guess.showcase.blog.model.SearchResult;

public class LuceneSearcher {
	/**
	 * 创建索引
	 * 
	 * @param results 搜索结果集合
	 * @throws Exception
	 */
	private static void createIndex(String indexPath, Analyzer analyzer, List<SearchResult> results) throws Exception {
		
		Directory dire = FSDirectory.open(new File(indexPath));
		IndexWriterConfig iwc = new IndexWriterConfig(LuceneUtil.version, analyzer);
		IndexWriter indexWriter = new IndexWriter(dire, iwc);
		addDoc(indexWriter, results);
		indexWriter.close();
	}

	/**
	 * 动态添加Document
	 * 
	 * @param indexWriter
	 * @param results 把文章加入索引
	 * @throws Exception
	 */
	private static void addDoc(IndexWriter indexWriter, List<SearchResult> results) throws Exception {
		for (SearchResult sr : results) {
			Document doc = new Document();
			String content = sr.getResultContent();
			String title = sr.getResultTitle();
			String id = sr.getId();
			String desc = sr.getResultDesc();
			doc.add(new TextField("content", content, Store.YES));
			doc.add(new TextField("title", title, Store.YES));
			doc.add(new TextField("id", id, Store.YES));
			doc.add(new TextField("desc", desc, Store.YES));
			indexWriter.addDocument(doc);
			indexWriter.commit();
		}
	}

	/**
	 * 搜索
	 * 
	 * @param query
	 * @throws Exception
	 */
	private static List<SearchResult> search(String indexPath, Query query) throws Exception {
		Directory dire = FSDirectory.open(new File(indexPath));
		IndexReader indexReader = DirectoryReader.open(dire);
		IndexSearcher indexSearcher = new IndexSearcher(indexReader);
		TopDocs td = indexSearcher.search(query, 1000);
		ScoreDoc[] scoreDocs = td.scoreDocs;
		Document document = null;
		String title = "";
		String id = "";
		String desc = "";
		List<SearchResult> searchResultList = new LinkedList<SearchResult>();
		SearchResult sr = null;
		for (ScoreDoc sdoc : scoreDocs) {
			sr = new SearchResult();
			document = indexSearcher.doc(sdoc.doc);
			title = document.getField("title").stringValue();
			id = document.getField("id").stringValue();
			desc = document.getField("desc").stringValue();
			sr.setId(id);
			sr.setResultDesc(desc);
			sr.setResultTitle(title);
			searchResultList.add(sr);
		}
		
		return searchResultList;
	}

	public static List<SearchResult> search(HttpServletRequest request, List<SearchResult> results, String queryString) throws Exception, Exception{
		Analyzer analyzer = new StandardAnalyzer(LuceneUtil.version);
		String indexPath = LuceneUtil.getIndexStorePath(request);
		createIndex(indexPath, analyzer, results);
		QueryParser parser = new QueryParser(LuceneUtil.version, LuceneUtil.SEARCH_FIELD, analyzer);
		Query query = parser.parse(queryString);
		List<SearchResult> list = search(indexPath, query);
		
		return list;
	}
}
