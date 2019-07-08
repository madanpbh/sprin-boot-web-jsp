package com.mkyong;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mkyong.dao.StudentDao;
import com.mkyong.pojo.Student;

@Controller
public class StudentController {
	
	@Autowired
	private StudentDao studentDao;
	
	@RequestMapping(value="/student",method=RequestMethod.GET)
	public ModelAndView getStudent(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("student");
		Student std=new Student();
		mv.addObject("student", std);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/saveStudent",method = RequestMethod.POST)
	public String  getsaveStudent(@ModelAttribute("student") Student student, BindingResult bindingResult, Model model){
		
		studentDao.saveStudent(student);
		
		return "redirect:/getList";
	}	
	
	@RequestMapping(value = "/getList",method = RequestMethod.GET)
	public String getList(ModelMap map ){
		
		List<Student> stList = studentDao.getStudentList();
		map.addAttribute("studentList", stList);
		
		return "getList";
		
	}
	
	@RequestMapping(value="/delete/{id}",method = RequestMethod.GET) 
	public String deleteStudent(@PathVariable("id") Long pk){
		
		studentDao.deleteStudent(pk);
		return "redirect:/getList";
		
	}


}
