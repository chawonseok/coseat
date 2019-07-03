package com.web.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.ExampleDao;
import com.web.dto.Example;

public class MyBatisexampleDao implements ExampleDao{
	@Autowired
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	public <List>Example get() {
		ExampleDao exampleDAO=sqlSession.getMapper(ExampleDao.class);
//		<List>Example result = exampleDAO.get();
		return null;
	}
}


