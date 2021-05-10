package com.divergentsl.springweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.divergentsl.springweb.dao.ApplicationDao;
import com.divergentsl.springweb.entity.Doctor;

@Service
public class DoctorCrudImpl implements DoctorCrudService {

	@Autowired
	private ApplicationDao<Doctor> applicationDoa;

	@Transactional
	@Override
	public void create(Doctor doctor) {
		applicationDoa.create(doctor);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Doctor> read() {
		return applicationDoa.read();
	}

	@Transactional
	@Override
	public boolean delete(int deleteid) {
		Doctor doctor = findById(deleteid);
		if (doctor != null) {
			applicationDoa.delete(doctor);
			return true;
		} else {
			return false;
		}
	}

	@Transactional
	@Override
	public boolean update(int updateid, String name, String username, String password, String speciality,
			String contact, int fees) {
		Doctor doctor = findById(updateid);

		if (doctor != null) {
			doctor.setId(updateid);
			doctor.setFees(fees);
			doctor.setName(name);
			doctor.setUsername(username);
			doctor.setPassword(password);
			doctor.setSpeciality(speciality);
			doctor.setContact(contact);
			applicationDoa.update(doctor);
			return true;
		} else {
			return false;
		}

	}

	@Transactional(readOnly = true)
	@Override
	public Doctor findById(long id) {
		return applicationDoa.findById(id);
	}

}
