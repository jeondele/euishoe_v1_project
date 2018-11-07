package com.euishoe.noncustomers.dto;

/**
 * 쇼핑몰 비회원 dto
 * 
 * @author 전상일
 *
 */
public class Noncustomer {
	
	// 변수 선언
	private int noncustomerNum; 				// 비회원번호
	private String noncustomerEmail; 			// 비회원이메일
	private String noncustomerName; 			// 비회원이름
	private String noncustomerPassword; 		// 비회원비밀번호
	private String noncustomerPhonenumber; 		// 비회원전화번호
	
	
	// 생성자(Constructor) 선언
	public Noncustomer() {
	
	}

	public Noncustomer(int noncustomerNum, String noncustomerEmail, String noncustomerName, String noncustomerPassword,
			String noncustomerPhonenumber) {
		super();
		this.noncustomerNum = noncustomerNum;
		this.noncustomerEmail = noncustomerEmail;
		this.noncustomerName = noncustomerName;
		this.noncustomerPassword = noncustomerPassword;
		this.noncustomerPhonenumber = noncustomerPhonenumber;
	}

	
	// setter, getter 메소드 선언
	public int getNoncustomerNum() {
		return noncustomerNum;
	}

	public void setNoncustomerNum(int noncustomerNum) {
		this.noncustomerNum = noncustomerNum;
	}

	public String getNoncustomerEmail() {
		return noncustomerEmail;
	}

	public void setNoncustomerEmail(String noncustomerEmail) {
		this.noncustomerEmail = noncustomerEmail;
	}

	public String getNoncustomerName() {
		return noncustomerName;
	}

	public void setNoncustomerName(String noncustomerName) {
		this.noncustomerName = noncustomerName;
	}

	public String getNoncustomerPassword() {
		return noncustomerPassword;
	}

	public void setNoncustomerPassword(String noncustomerPassword) {
		this.noncustomerPassword = noncustomerPassword;
	}

	public String getNoncustomerPhonenumber() {
		return noncustomerPhonenumber;
	}

	public void setNoncustomerPhonenumber(String noncustomerPhonenumber) {
		this.noncustomerPhonenumber = noncustomerPhonenumber;
	}

	
	// toString() 선언
	@Override
	public String toString() {
		return "Noncustomer [noncustomerNum=" + noncustomerNum + ", noncustomerEmail=" + noncustomerEmail
				+ ", noncustomerName=" + noncustomerName + ", noncustomerPassword=" + noncustomerPassword
				+ ", noncustomerPhonenumber=" + noncustomerPhonenumber + "]";
	}
	
}
