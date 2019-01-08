package com.hbk.bloodrequest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hbk.bloodrequest.dao.BloodRequestDAO;
import com.hbk.bloodrequest.model.Hospital;

@Service("bloodService")
public class BloodRequestImpl implements BloodRequestService{
	@Autowired
	private BloodRequestDAO bloodRequestDAO;
	@Transactional
	@Override
	public Hospital doSignup(Hospital hospital) {
		return bloodRequestDAO.doSignup(hospital); 
	}
	
	@Transactional
	@Override
	public Hospital doLogin(Hospital hospital) {
		return bloodRequestDAO.doLogin(hospital);
	}
	
}
