package com.divergentsl.springweb.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.divergentsl.springweb.dao.ApplicationDao;
import com.divergentsl.springweb.entity.Patient;

@Service
public class PatientImpl implements PatientService {
	@Autowired
	private ApplicationDao<Patient> applicationDoa;


	@Transactional
	@Override
	public void create(Patient patient) {
		applicationDoa.create(patient);
	}

	@Transactional(readOnly = true)
	@Override
	public List<Patient> read() {
		return applicationDoa.read();
	}

	@Transactional
	@Override
	public boolean delete(long Id) {
		Patient patient = findById(Id);
		if (patient != null) {
			applicationDoa.delete(patient);
			return true;
		} else {
			return false;
		}
	}

	@Override
	@Transactional(readOnly = true)
	public Patient findById(long id) {
		return applicationDoa.findById(id);
	}

	@Transactional
	@Override
	public boolean update(int updateid, String name, String gender, int age, int weight, String contact,
			String address) {
		Patient patient = findById(updateid);
		if (patient != null) {
			patient.setId(updateid);
			patient.setName(name);
			patient.setGender(gender);
			patient.setContact(contact);
			patient.setAge(age);
			patient.setWeight(weight);
			patient.setAddress(address);
			applicationDoa.update(patient);
			return true;
		} else {
			return false;
		}
	}
}
