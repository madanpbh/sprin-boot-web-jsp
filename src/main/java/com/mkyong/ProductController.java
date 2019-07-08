package com.mkyong;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mkyong.dao.ProductDao;
import com.mkyong.pojo.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDao productDao;
    
	@GetMapping(value="/getLogin")
	public ModelAndView getLoginPage() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("product");
		Product p=new Product();
		mv.addObject("product", p);
		return mv;
	}
	@PostMapping(value="/saveproduct")
	public String saveProductData(@ModelAttribute("product") Product product,BindingResult bindingResult,Model model) {
		productDao.saveProduct(product);
		return "redirect:/getProductList";
	}
	@RequestMapping(value="/getProductList",method=RequestMethod.GET)
	public String getProductList(ModelMap model){
		List<Product> list=productDao.getProductInformation();
		model.addAttribute("getProductData", list);
		return "getProductList";
	}
	
}
