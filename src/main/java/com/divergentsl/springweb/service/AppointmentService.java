package com.divergentsl.springweb.service;

import java.util.List;

import com.divergentsl.springweb.entity.Appointment;

public interface AppointmentService {
	void create(Appointment appointment);
	List<Appointment> read();
	boolean remove(int deleteid);
	boolean update(int updateid, int doctor_id, int patient_id, String doctor_name, String patient_name, String problem,
			String date, String time);
	public Appointment findById(long id);
}
