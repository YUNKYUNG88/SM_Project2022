package com.sm.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CalculateMapper {
	List selectCalculateList(HashMap params);
	HashMap selectCalculateSum(HashMap params);
	
}