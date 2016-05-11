/**
 * SearchService.java
 * 上午9:26:37
 * shenyuchuan
 */
package org.guess.showcase.blog.dao;

import java.util.List;

import org.guess.showcase.blog.model.SearchResult;

/**
 * @author shenyuchuan
 *
 */
public interface SearchDao {
	List<SearchResult> queryByLucene(String queryString);
}
