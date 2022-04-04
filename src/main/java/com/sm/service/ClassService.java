package com.sm.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sm.mapper.ClassMapper;

@Service
public class ClassService {
	
	@Resource ClassMapper classMapper;
	
	public List selectClassList(HashMap params) {
		return classMapper.selectClassList(params);
		
	}
	
	public int insertClass(HashMap params) {
		return classMapper.insertClass(params);
	}
	
	
	
}