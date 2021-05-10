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

import com.divergentsl.springweb.entity.Doctor;
import com.divergentsl.springweb.service.DoctorCrudService;

@Controller
@RequestMapping("/AddDoctor")
public class DoctorController {
	@Autowired
	private DoctorCrudService doctorCrudService;
	//private Logger logger = org.slf4j.LoggerFactory.getLogger(getClass());

	@GetMapping
	ModelAndView showPage() {
		List<Doctor> list = doctorCrudService.read();
		ModelAndView view = new ModelAndView("Doctor");
		view.addObject("doctorList", list);
		return view;
	}

	@PostMapping
	public String createDoctor(HttpServletRequest request, HttpServletResponse response) {
		String doctorName = request.getParameter("doctorName");
		String doctorUserName = request.getParameter("doctorUserName");
		String password = request.getParameter("doctorPassword");
		String doctorContact = request.getParameter("doctorContact");
		String doctorSpeciality = request.getParameter("doctorSpeciality");
		int doctorFees = Integer.parseInt(request.getParameter("doctorFees"));
		Doctor doctor = new Doctor(doctorUserName, password, doctorName, doctorContact, doctorSpeciality, doctorFees);
		doctorCrudService.create(doctor);
		return "redirect:/AddDoctor";

	}

	@GetMapping("/remove")
	protected String delete(HttpServletRequest request, HttpServletResponse response) {
		int deletid = Integer.parseInt(request.getParameter("doctorId"));
		if (doctorCrudService.delete(deletid)) {
			return "redirect:/AddDoctor";
		}
		return null;
	}

}
