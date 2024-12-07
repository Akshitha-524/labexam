package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		
		return mv;
		
	}
	
	
	@GetMapping("adminhome")
	public ModelAndView adminhome(){
		
		ModelAndView mv=new ModelAndView("adminhome");
		long count=adminService.customercount();
		mv.addObject("count", count);
		
		
		return mv;
		
	}
	
	@PostMapping("checkadminLogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		
		ModelAndView mv=new ModelAndView();
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		
		Admin  admin=adminService.checkAdminLogin(auname, apwd);
		
		if(admin!=null) {
			
			mv.setViewName("adminhome");
			long count=adminService.customercount();
			mv.addObject("count", count);
			
		}else {
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login FAILED");
		}
		return mv;
	}
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallcustomers");
		
		long count=adminService.customercount();
		mv.addObject("count", count);
		
		List<Customer> customers=adminService.viewAllCustomers();
		mv.addObject("customerlist", customers);
		
		return mv;
	}
	@GetMapping("deletecustomers")
	public ModelAndView deletcustomers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deletecustomers");
		
		
		
		List<Customer> customers=adminService.viewAllCustomers();
		mv.addObject("customerlist", customers);
		
		return mv;
	}
	@GetMapping("delete")
	public String delete(@RequestParam int id)
	{
		adminService.deletCustomer(id);
		return "redirect:/deletecustomers";
	}
	@GetMapping("viewcustomerbyid")
	public ModelAndView viewcustomerbyid(){
		
		ModelAndView mv=new ModelAndView();
		List<Customer> customers=adminService.viewAllCustomers();
		mv.addObject("customerlist", customers);
		
		mv.setViewName("viewcustomerbyid");
		return mv;
		
	}

}
