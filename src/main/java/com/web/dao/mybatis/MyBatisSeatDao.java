package com.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.ExampleDao;
import com.web.dao.SeatDao;
import com.web.dto.Seat;

@Repository
public class MyBatisSeatDao implements SeatDao {
	@Autowired
	private SqlSession sqlSession;

	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<Seat> get() {

		SeatDao seatDao=sqlSession.getMapper(SeatDao.class);
		List<Seat> result = seatDao.get();
		return result;
	}
}
