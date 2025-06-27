package com.jsp.mvc.vms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.mvc.vms.entity.Vehicle;
import com.jsp.mvc.vms.service.VehicleService;

@Controller
public class VehicleController {
	
	@Autowired
	private VehicleService service;
	
	@RequestMapping(value="/add-vehicle",method = RequestMethod.POST)
	public ModelAndView addVehicle(Vehicle vehicle) {
		return service.addVehicle(vehicle);
	}
	
	@RequestMapping(value = "/display-all", method = RequestMethod.GET)
	public ModelAndView displayAllVehicle() {
		return service.displayAllVehicle();
	}
	

	
	@RequestMapping(value = "/update-by-id", method = RequestMethod.GET)
	public ModelAndView updateVehicle(@RequestParam int id) {
		return service.updateVehicle(id);
	}
	
	@RequestMapping(value = "/update-vehicle", method = RequestMethod.POST)
	public ModelAndView vehicleUpdate(Vehicle vehicle) {
		return service.vehicleUpdate(vehicle);
	}
	
	@RequestMapping(value = "/delete-by-id", method = RequestMethod.GET)
	public ModelAndView deleteVehicle(@RequestParam int id) {
		return service.deleleteVehicle(id);
	}
	
	
	

}
