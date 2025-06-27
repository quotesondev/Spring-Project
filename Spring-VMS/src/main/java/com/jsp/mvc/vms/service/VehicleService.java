package com.jsp.mvc.vms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.mvc.vms.entity.Vehicle;
import com.jsp.mvc.vms.repository.VehicleRepository;


@Service
public class VehicleService {
	
	@Autowired
	private VehicleRepository repository;

	public ModelAndView addVehicle(Vehicle vehicle) {
		//Resolving the Request
		repository.saveVehicle(vehicle);
		
		//Generate the response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
	}

	public ModelAndView displayAllVehicle() {
		// Resolving the request
		List<Vehicle> vehicles = repository.findAll();
		
		// Generate response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("displayAllVehicle.jsp");
		mav.addObject("vehicleList", vehicles);
		return mav;
	}

	public ModelAndView updateVehicle(int id) {
		//Resolving the request
		Vehicle vehicle = repository.updateVehicle(id);
		
		//Generating the response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("updateVehicle.jsp");
		mav.addObject("vehicleObject",vehicle);
		return mav;
	}

	public ModelAndView vehicleUpdate(Vehicle vehicle) {
		// Resolving the request
		repository.vehicleUpdate(vehicle);
		
		//Generating the response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect: display-all");
		
		return mav;
	}

	public ModelAndView deleleteVehicle(int id) {
		// Resolving the request
		repository.deleteVehicle(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect: display-all");
		return mav;
	}
	



}
