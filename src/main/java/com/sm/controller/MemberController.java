package com.sm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sm.service.MemberService;

@Controller 
public class MemberController {
 
	@Autowired 
	private MemberService memberService;
	
	@RequestMapping("/memberList") 
	public String memberList(HttpServletRequest request,  Model model) { 
		
		 HashMap params = new HashMap(); 
		 List list = memberService.selectMemberList(params);
		  
		 model.addAttribute("memberList", list);
		 
	return "/member/memberList"; 
	}
	
	@RequestMapping("/memberEdit" ) 
	public String memberEdit(HttpServletRequest request,Model model) { 
		
		String userNo = request.getParameter("userNo");
		
		String path = "/member/memberIns"; 
		if(!"".equals(userNo) && userNo != null) {
			HashMap params = new HashMap();
			params.put("userNo", userNo);
			HashMap member = memberService.selectMemberInfo(params);
			model.addAttribute("member",member);
			
			path ="/member/memberEdit"; 
		}
		return path; 
	}
	
	@RequestMapping(value="/memberIns", method= RequestMethod.POST) 
	@ResponseBody
	public Map insertMember(HttpServletRequest request, Model model) { 
		
		HashMap params = new HashMap(); 
		params.put("userNm", request.getParameter("userNm"));
		params.put("mobile", request.getParameter("mobile"));
		params.put("joinDate", request.getParameter("joinDate"));
		
		memberService.insertMember(params);
		
		Map<String, Object> rmap = new HashMap<String, Object>();
		rmap.put("result", "S");
		
		return rmap;
	}
	
	@RequestMapping(value="/memberUpd", method= RequestMethod.POST) 
	@ResponseBody
	public Map memberUpd(HttpServletRequest request, Model model) { 
		
		HashMap params = new HashMap();
		params.put("userNo", request.getParameter("userNo"));
		params.put("userNm", request.getParameter("userNm"));
		params.put("mobile", request.getParameter("mobile"));
		params.put("joinDate", request.getParameter("joinDate"));
		
		memberService.updateMember(params);
		
		Map<String, Object> rmap = new HashMap<String, Object>();
		rmap.put("result", "S");
		
		return rmap;
	}
	
	
}
