package com.sm.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sm.mapper.CalculateMapper;

@Service
public class CaculateService {
	@Resource CalculateMapper calculateMapper;
	
	
	
	public List selectCalculateList(HashMap params) {
		return calculateMapper.selectCalculateList(params);
		
	}
	
	public HashMap selectCalculateSum(HashMap params) {
		return calculateMapper.selectCalculateSum(params);
		
	}
	
	
}