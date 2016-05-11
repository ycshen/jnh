package org.guess.showcase.blog.dao.impl;

import java.util.List;

import org.guess.core.utils.lucene.LuceneSearcher;
import org.guess.core.utils.lucene.LuceneUtil;
import org.guess.showcase.blog.dao.SearchDao;
import org.guess.showcase.blog.model.SearchResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDaoImpl implements SearchDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Override
	public List<SearchResult> queryByLucene(String queryString) {
		String sql = "select id,createDate,content as resultContent,title as resultTitle,describle as resultDesc "
				+ "from t_crawler_article order by createDate DESC";
		List<SearchResult> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<SearchResult>(SearchResult.class));
		return list;
	}

}
