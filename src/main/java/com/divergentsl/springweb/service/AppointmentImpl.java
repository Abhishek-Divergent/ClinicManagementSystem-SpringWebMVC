package com.divergentsl.springweb.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.divergentsl.springweb.dao.ApplicationDao;
import com.divergentsl.springweb.entity.Appointment;

/**
 * in this is class admin will appoint a doctor to patient
 * 
 * @author JAI MAHAKAL
 *
 */
@Service
public class AppointmentImpl implements AppointmentService {

	@Autowired
	private ApplicationDao<Appointment> applicationDoa;

	@Transactional
	@Override
	public void create(Appointment appointment) {
		applicationDoa.create(appointment);
	}

	@Override
	public List<Appointment> read() {
		return applicationDoa.read();
	}

	@Transactional
	@Override
	public boolean remove(int deleteid) {
		Appointment appointment = findById(deleteid);
		if (appointment != null) {
			applicationDoa.delete(appointment);
			return true;
		} else {
			return false;
		}
	}

	@Transactional
	@Override
	public boolean update(int updateid, int doctor_id, int patient_id, String doctor_name, String patient_name,
			String problem, String date, String time) {
		Appointment appointment = findById(updateid);
		if (appointment != null) {
			appointment.setId(updateid);
			appointment.setDoctor_id(doctor_id);
			appointment.setPatient_id(patient_id);
			appointment.setDoctor_name(doctor_name);
			appointment.setPatient_name(patient_name);
			appointment.setTime(time);
			appointment.setProblem(problem);
			appointment.setDate(date);
			applicationDoa.update(appointment);
			return true;
		} else {
			return false;
		}

	}

	@Override
	public Appointment findById(long id) {
		return applicationDoa.findById(id);
	}

}
