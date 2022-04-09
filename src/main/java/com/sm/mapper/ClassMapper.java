package com.sm.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClassMapper {
	List selectClassList(HashMap params);
	int insertClass(HashMap params);
	HashMap selectClassInfo(HashMap params);
	int updateClass(HashMap params);
	
	int insertLessonDate(HashMap params);
	int deleteLessonDate(HashMap params);
	List selectLessonDate(HashMap params);
	
}