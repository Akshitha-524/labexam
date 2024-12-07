package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;


@Service
public class CustomerServiceImpl implements CustomerService{

	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public String customerRegistartion(Customer customer) {
		// TODO Auto-generated method stub
		
		customerRepository.save(customer);
		
		return "successfully registerd";
	}

	@Override
	public Customer checkCustomerLogin(String email, String password) {
		// TODO Auto-generated method stub
		
		return customerRepository.checkCustomerLogin(email, password);
	}

}
