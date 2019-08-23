package com.web.dao;

import java.util.List;

import com.web.dto.Room;

public interface RoomDao {
	List<Room> get();
	boolean chkRoomNo();
}
