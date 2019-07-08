package com.mkyong;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mkyong.dao.EmployeeDao;
import com.mkyong.pojo.Employee;

@Controller
public class EmployeeController {
    @Autowired
	private EmployeeDao employeeDao;
	
	@RequestMapping(value = "/employee", method = RequestMethod.GET)
	public ModelAndView getEmployee() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("employee");
		Employee emp = new Employee();
		mv.addObject("employee", emp);
		return mv;

	}
	
	@RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
	public String getsaveEmployee(@ModelAttribute("employee") Employee employee, BindingResult bindingResult, Model model){
		
		employeeDao.saveEmployee(employee);
		 return "redirect:/getEmployeeList";
	}
	@RequestMapping(value="/getEmployeeList",method=RequestMethod.GET)
	public String displayEmployeeList(ModelMap map) {
		
		List<Employee> stEmployee=employeeDao.getEmployeeList();
		map.addAttribute("getEmployeeData",stEmployee);
		
		return "getEmployeeList";
	}
}
