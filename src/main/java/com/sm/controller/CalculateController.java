package com.sm.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sm.service.CaculateService;

@Controller 
public class CalculateController {
 
	@Autowired 
	private CaculateService caculateService;
	
	@RequestMapping("/calculateList") 
	public String calculateList(HttpServletRequest request,  Model model, @RequestParam HashMap params) { 
		
		 
		//sum
		HashMap sumInfo = caculateService.selectCalculateSum(params);
		//list
		List calList = caculateService.selectCalculateList(params);
		
		model.addAttribute("sumInfo", sumInfo);
		model.addAttribute("calList", calList);
		model.addAttribute("params", params);
		 
		return "/calcul/calculateList"; 
	}
	

	
	
}
