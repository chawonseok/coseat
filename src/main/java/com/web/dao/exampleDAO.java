package com.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class exampleDAO {
	@Autowired
	private SqlSession sqlSession;

	public Object insert(String queryId, Object params) {
		
		return sqlSession.insert(queryId, params);
	}

	public Object update(String queryId, Object params) {
		
		return sqlSession.update(queryId, params);
	}

	public Object delete(String queryId, Object params) {
		
		return sqlSession.delete(queryId, params);
	}

	public Object selectOne(String queryId) {
		
		return sqlSession.selectOne(queryId);
	}

}
