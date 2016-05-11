package org.guess.core.utils.lucene;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.FuzzyQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.PrefixQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.TopScoreDocCollector;
import org.apache.lucene.search.WildcardQuery;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.guess.showcase.blog.model.SearchResult;

public class LuceneSearcher {
	/**
	 * 创建索引
	 * 
	 * @param results 搜索结果集合
	 * @throws Exception
	 */
	private static void createIndex(Analyzer analyzer, List<SearchResult> results) throws Exception {
		
		Directory dire = FSDirectory.open(new File(LuceneUtil.INDEX_STORE_PATH));
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
	private static void search(Query query) throws Exception {
		Directory dire = FSDirectory.open(new File(LuceneUtil.INDEX_STORE_PATH));
		IndexReader indexReader = DirectoryReader.open(dire);
		IndexSearcher indexSearcher = new IndexSearcher(indexReader);
		TopDocs td = indexSearcher.search(query, 1000);
		ScoreDoc[] scoreDocs = td.scoreDocs;
		for (ScoreDoc sdoc : scoreDocs) {
			Document document = indexSearcher.doc(sdoc.doc);
			System.out.println(document.get("1"));
		}
	}

	public static void search(List<SearchResult> results, String queryString) throws Exception, Exception{
		Analyzer analyzer = new StandardAnalyzer(LuceneUtil.version);
		createIndex(analyzer, results);
		QueryParser parser = new QueryParser(LuceneUtil.version, LuceneUtil.SEARCH_FIELD, analyzer);
		Query query = parser.parse(queryString);
		search(query);
	}
}
