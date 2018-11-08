package com.euishoe.points.dto;

public class PointPolicy {
	private int pointPolicyType;
	private String pointPolicyDescription;
	private int pointPolicyPayment;
	
	public PointPolicy() {
		super();
	}

	public PointPolicy(int pointPolicyType, String pointPolicyDescription, int pointPolicyPayment) {
		super();
		this.pointPolicyType = pointPolicyType;
		this.pointPolicyDescription = pointPolicyDescription;
		this.pointPolicyPayment = pointPolicyPayment;
	}

	public int getPointPolicyType() {
		return pointPolicyType;
	}

	public void setPointPolicyType(int pointPolicyType) {
		this.pointPolicyType = pointPolicyType;
	}

	public String getPointPolicyDescription() {
		return pointPolicyDescription;
	}

	public void setPointPolicyDescription(String pointPolicyDescription) {
		this.pointPolicyDescription = pointPolicyDescription;
	}

	public int getPointPolicyPayment() {
		return pointPolicyPayment;
	}

	public void setPointPolicyPayment(int pointPolicyPayment) {
		this.pointPolicyPayment = pointPolicyPayment;
	}
		
	
	
	
}
