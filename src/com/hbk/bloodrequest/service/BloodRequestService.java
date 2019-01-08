package com.hbk.bloodrequest.service;

import com.hbk.bloodrequest.model.Hospital;

public interface BloodRequestService {
	public Hospital doSignup(Hospital hospital);
	public Hospital doLogin(Hospital hospital);
}
