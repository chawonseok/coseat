package com.web.dao.mybatis;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.UserDao;
import com.web.dto.User;
import java.util.List;

@Repository
public class MyBatisUserDao implements UserDao{
	@Autowired
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<User> get()
	{
		UserDao userDao = sqlSession.getMapper(UserDao.class);
		List<User> ret = userDao.get();
		return ret;
	}
}
