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
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/classEdit") 
	public String classIns(HttpServletRequest request,  Model model) { 
		
		
		 
	return "/class/classIns"; 
	}
	
	@RequestMapping(value="/classIns", method= RequestMethod.POST) 
	public String insertMember(HttpServletRequest request, Model model, @RequestParam HashMap params) { 
		
		classService.insertClass(params);
		
		
		
		return "redirect:/classList";
	}
	
}
