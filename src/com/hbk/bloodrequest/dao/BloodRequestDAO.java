package com.hbk.bloodrequest.dao;

import com.hbk.bloodrequest.model.Hospital;

public interface BloodRequestDAO {
	public Hospital doSignup(Hospital hospital);
	public Hospital doLogin(Hospital hospital);
}
