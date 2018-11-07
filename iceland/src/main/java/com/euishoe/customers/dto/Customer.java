package com.euishoe.customers.dto;
/**
 * 쇼핑몰 고객 dto
 * 
 * @author 백욱기
 */
public class Customer {
	
	// 변수 선언
	private String customerId;				// 회원아이디
	private String customerName;			// 회원이름
	private String customerPassword;		// 회원비밀번호
	private String customerPhonenumber;		// 회원전화번호
	private String customerEmail;			// 회원이메일
	private String customerAddress;			// 회원주소
	private String customerPostcode;		// 회원우편번호
	private String customerBirthday;		// 회원생년월일
	private String customerGender;			// 회원성별
	private String customerJacketSize;		// 회원상의사이즈
	private String customerPantsSize;		// 회원하의사이즈
	private String customerHeight;			// 회원신장
	private int customerBody;				// 회원몸성향
	private int customerShoulder;			// 회원어깨성향
	private int customerArm; 				// 회원팔성향
	private int customerLeg;				// 회원다리성향
	
	// 생성자(Constructor) 선언
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Customer(String customerId, String customerName, String customerPassword, String customerPhonenumber,
			String customerEmail, String customerAddress, String customerPostcode, String customerBirthday,
			String customerGender, String customerJacketSize, String customerPantsSize, String customerHeight,
			int customerBody, int customerShoulder, int customerArm, int customerLeg) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.customerPassword = customerPassword;
		this.customerPhonenumber = customerPhonenumber;
		this.customerEmail = customerEmail;
		this.customerAddress = customerAddress;
		this.customerPostcode = customerPostcode;
		this.customerBirthday = customerBirthday;
		this.customerGender = customerGender;
		this.customerJacketSize = customerJacketSize;
		this.customerPantsSize = customerPantsSize;
		this.customerHeight = customerHeight;
		this.customerBody = customerBody;
		this.customerShoulder = customerShoulder;
		this.customerArm = customerArm;
		this.customerLeg = customerLeg;
	}

	// setter, getter 선언
	public String getCustomerId() {
		return customerId;
	}


	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}


	public String getCustomerName() {
		return customerName;
	}


	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}


	public String getCustomerPassword() {
		return customerPassword;
	}


	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}


	public String getCustomerPhonenumber() {
		return customerPhonenumber;
	}


	public void setCustomerPhonenumber(String customerPhonenumber) {
		this.customerPhonenumber = customerPhonenumber;
	}


	public String getCustomerEmail() {
		return customerEmail;
	}


	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}


	public String getCustomerAddress() {
		return customerAddress;
	}


	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}


	public String getCustomerPostcode() {
		return customerPostcode;
	}


	public void setCustomerPostcode(String customerPostcode) {
		this.customerPostcode = customerPostcode;
	}


	public String getCustomerBirthday() {
		return customerBirthday;
	}


	public void setCustomerBirthday(String customerBirthday) {
		this.customerBirthday = customerBirthday;
	}


	public String getCustomerGender() {
		return customerGender;
	}


	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}

	
	public String getCustomerJacketSize() {
		return customerJacketSize;
	}


	public void setCustomerJacketSize(String customerJacketSize) {
		this.customerJacketSize = customerJacketSize;
	}


	public String getCustomerPantsSize() {
		return customerPantsSize;
	}


	public void setCustomerPantsSize(String customerPantsSize) {
		this.customerPantsSize = customerPantsSize;
	}


	public String getCustomerHeight() {
		return customerHeight;
	}


	public void setCustomerHeight(String customerHeight) {
		this.customerHeight = customerHeight;
	}

	public int getCustomerBody() {
		return customerBody;
	}

	public void setCustomerBody(int customerBody) {
		this.customerBody = customerBody;
	}

	public int getCustomerShoulder() {
		return customerShoulder;
	}

	public void setCustomerShoulder(int customerShoulder) {
		this.customerShoulder = customerShoulder;
	}

	public int getCustomerArm() {
		return customerArm;
	}

	public void setCustomerArm(int customerArm) {
		this.customerArm = customerArm;
	}

	public int getCustomerLeg() {
		return customerLeg;
	}

	public void setCustomerLeg(int customerLeg) {
		this.customerLeg = customerLeg;
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", customerName=" + customerName + ", customerPassword="
				+ customerPassword + ", customerPhonenumber=" + customerPhonenumber + ", customerEmail=" + customerEmail
				+ ", customerAddress=" + customerAddress + ", customerPostcode=" + customerPostcode
				+ ", customerBirthday=" + customerBirthday + ", customerGender=" + customerGender
				+ ", customerJacketSize=" + customerJacketSize + ", customerPantsSize=" + customerPantsSize
				+ ", customerHeight=" + customerHeight + ", customerBody=" + customerBody + ", customerShoulder="
				+ customerShoulder + ", customerArm=" + customerArm + ", customerLeg=" + customerLeg + "]";
	}
}
