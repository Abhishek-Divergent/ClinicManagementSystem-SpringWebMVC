package com.divergentsl.springweb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.divergentsl.springweb.entity.Appointment;

import com.divergentsl.springweb.service.AppointmentService;

@Controller
@RequestMapping("/AddAppointment")
public class AppointmentController {

	@Autowired
	private AppointmentService appointmentService;

	@GetMapping
	ModelAndView showPage() {
		List<Appointment> list = appointmentService.read();
		ModelAndView view = new ModelAndView("Appointment");
		view.addObject("appointmentList", list);
		return view;
	}

	@PostMapping
	public String createDoctor(HttpServletRequest request, HttpServletResponse response) {

		return "redirect:/AddAppointment";
	}

	@GetMapping("/remove")
	protected String delete(HttpServletRequest request, HttpServletResponse response) {
		return "redirect:/AddAppointment";
	}

}
