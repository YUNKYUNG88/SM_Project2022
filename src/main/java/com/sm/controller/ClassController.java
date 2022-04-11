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
public class ClassController {
 
	@Autowired 
	private ClassService classService; 
	
	@RequestMapping("/classList") 
	public String classList(HttpServletRequest request,  Model model, @RequestParam HashMap params) { 
		
		
		 List list = classService.selectClassList(params);
		  
		 model.addAttribute("classList", list);
		 
	return "/class/classList"; 
	}
	
	@RequestMapping("/classEdit") 
	public String classIns(HttpServletRequest request,  Model model, @RequestParam HashMap params) { 
		
		String seq = request.getParameter("seq");
		
		String path = "/class/classIns"; 
		if(!"".equals(seq) && seq != null) {
			
			HashMap member = classService.selectClassInfo(params);
			model.addAttribute("member",member);
			
			path ="/class/classEdit"; 
		}
	return path; 
	 
	}
	
	@RequestMapping(value="/classIns", method= RequestMethod.POST) 
	public String insertMember(HttpServletRequest request, Model model, @RequestParam HashMap params) { 
		
		classService.insertClass(params);
		
		return "redirect:/classList";
	}
	
	
	@RequestMapping(value="/classUpd", method= RequestMethod.POST) 
	public String classUpd(HttpServletRequest request, Model model, @RequestParam HashMap params) { 
		
		classService.updateClass(params);
		
		return "redirect:/classList";
	}
	
	@RequestMapping(value="/lessonIns", method= RequestMethod.POST) 
	public String lessonIns(HttpServletRequest request, Model model, @RequestParam HashMap params) { 
		
		classService.insertLessonDate(params);
		return "redirect:/classLessonList?classSeq="+params.get("classSeq");
	}
	@RequestMapping(value="/lessonDel", method= RequestMethod.POST) 
	public String lessonDel(HttpServletRequest request, Model model, @RequestParam HashMap params) { 
		
		classService.deleteLessonDate(params);
		return "redirect:/classLessonList?classSeq="+params.get("classSeq");
	}
	
	
	
	@RequestMapping("/classLessonList") 
	public String classLessonList(HttpServletRequest request,  Model model, @RequestParam HashMap params) { 
		
		 
		 List list = classService.selectLessonDate(params);
		  
		 model.addAttribute("lessonList", list);
		 model.addAttribute("params", params);
		 
	return "/class/lessonListPop"; 
	}
	
}
