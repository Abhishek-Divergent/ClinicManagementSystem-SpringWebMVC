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

import com.divergentsl.springweb.entity.Patient;
import com.divergentsl.springweb.service.PatientService;

@Controller
@RequestMapping("/AddPatient")
public class PatientContoller {
	@Autowired
	private PatientService patientService;

	@GetMapping
	ModelAndView showPage() {
		List<Patient> list = patientService.read();
		ModelAndView view = new ModelAndView("Patient");
		view.addObject("paitentList",list);
		return view;
	}

	@PostMapping
	public String createPatient(HttpServletRequest request, HttpServletResponse response) {
		String patientName = request.getParameter("patientName");
		String gender = request.getParameter("gender");
		int patientAge = Integer.parseInt(request.getParameter("patientAge"));
		int patientWeight = Integer.parseInt(request.getParameter("patientWeight"));
		String patientContact=request.getParameter("patientContact");
		String patientAddress=request.getParameter("patientAddress");
		Patient patient=new Patient(patientName, patientAge, gender, patientContact, patientWeight, patientAddress);
		patientService.create(patient);
		return "redirect:/AddPatient";
	}

	@GetMapping("/remove")
	protected String delete(HttpServletRequest request, HttpServletResponse response) {
		int deletid = Integer.parseInt(request.getParameter("patientId"));
		if (patientService.delete(deletid)) {
			return "redirect:/AddPatient";
		}
		return null;
	}
}
