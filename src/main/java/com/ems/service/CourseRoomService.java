package com.ems.service;

import com.ems.entity.CourseRoom;

public interface CourseRoomService {
    CourseRoom selectByCId(Integer cId);
    int insertSelective(CourseRoom record);
}