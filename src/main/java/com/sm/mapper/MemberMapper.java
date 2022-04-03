package com.sm.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	List selectMemberList(HashMap params);
	HashMap selectMemberInfo(HashMap params);
	int insertMember(HashMap params);
	int updateMember(HashMap params);
	

}