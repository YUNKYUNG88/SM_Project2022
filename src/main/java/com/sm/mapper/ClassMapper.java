package com.sm.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClassMapper {
	List selectClassList(HashMap params);
	int insertClass(HashMap params);
	

}