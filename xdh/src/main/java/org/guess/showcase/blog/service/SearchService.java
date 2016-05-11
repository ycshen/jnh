/**
 * SearchService.java
 * 上午9:26:37
 * shenyuchuan
 */
package org.guess.showcase.blog.service;

import java.util.List;

import org.guess.showcase.blog.model.SearchResult;

/**
 * @author shenyuchuan
 *
 */
public interface SearchService {
	List<SearchResult> queryByLucene(String queryString);
}
