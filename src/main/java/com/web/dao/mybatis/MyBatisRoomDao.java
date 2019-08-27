package com.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.RoomDao;
import com.web.dto.Room;

@Repository
public class MyBatisRoomDao implements RoomDao {

	@Autowired
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<Room> get() {
		
		RoomDao roomDao = sqlSession.getMapper(RoomDao.class);
		List<Room> result = roomDao.get();
		
		return result;
	}
	
	@Override
	public Room chkRoomNo(int roomid) {
		// TODO Auto-generated method stub
		
		RoomDao roomdao = sqlSession.getMapper(RoomDao.class);
		Room result = roomdao.chkRoomNo(roomid);
		
		return result;
	}
	

}
