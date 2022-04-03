package com.sm.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sm.mapper.MemberMapper;

@Service
public class MemberService {
	
	@Resource MemberMapper memberMapper;
	
	public List selectMemberList(HashMap params) {
		return memberMapper.selectMemberList(params);
	}
	public HashMap selectMemberInfo(HashMap params) {
		return memberMapper.selectMemberInfo(params);
	}
	
	
	public int insertMember(HashMap params) {
		return memberMapper.insertMember(params);
	}
	
	public int updateMember(HashMap params) {
		return memberMapper.updateMember(params);
	}
	
	
	
}