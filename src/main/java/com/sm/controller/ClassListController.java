package com.sm.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sm.service.ClassService;

@Controller 
public class ClassListController {
 
	@Autowired 
	private ClassService classService;
	
	@RequestMapping("/classList") 
	public String classList(HttpServletRequest request,  Model model) { 
		
		 HashMap params = new HashMap(); 
		 List list = classService.selectClassList(params);
		  
		 model.addAttribute("classList", list);
		 
	return "/class/classList"; 
	}
	
	@RequestMapping("/classIns") 
	public String classIns(HttpServletRequest request,  Model model) { 
		
		
		 
	return "/class/classIns"; 
	}
	
}
