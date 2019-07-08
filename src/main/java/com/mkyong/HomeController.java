package com.mkyong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
   
	@RequestMapping(value="/home")
	public ModelAndView view(@RequestParam("eid") int empId, @RequestParam("ename") String empName,@RequestParam("esal") double empSal) {
	ModelAndView mv=new ModelAndView("Data");
    mv.addObject("empId", empId);
    mv.addObject("empName", empName);
    mv.addObject("empSal", empSal);
	return mv;
	}
}
