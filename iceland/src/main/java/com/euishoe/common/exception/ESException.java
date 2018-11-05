package com.euishoe.common.exception;

/**
 * 사용자 정의 RuntimeException
 * 
 * @author 전상일
 */
public class ESException extends RuntimeException {
	
	private static final String DEFAULT_CODE = "KMS-0001";
	private String code;

	public ESException() {
		this(DEFAULT_CODE, "Database Server Error!");				
	}
		
	public ESException(String message) {
		super(message);
	}

	public ESException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public ESException(String code, String message) {
		super(message);
		this.code = code;
	}
	
	public ESException(String code, String message, Throwable cause) {
		super(message, cause);
		this.code = code;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
}
