package com.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.ExampleDao;
import com.web.dto.Example;

public class MyBatisexampleDao implements ExampleDao{
	@Autowired
	private SqlSession sqlSession;
	
	public List<Example> get() {
		ExampleDao exampleDAO=sqlSession.getMapper(ExampleDao.class);
		List<Example> result = exampleDAO.get();
		return result;
	}
}


