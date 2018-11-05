package com.euishoe.points.dto;

/**
 * 고객의 포인트 dto
 * 
 * @author 전상일
 *
 */
public class PointHistory {
	private int pointHistoryNum; //포인트 이력번호
	private int pointPolicyType; //포인트 정책유형
	private String customerId; //회원아이디
	private int pointHistoryScore; //포인트 점수
	private String pointHistoryUpdateDate; //포인트이력변경일자
	
	public PointHistory() {
	}

	public PointHistory(int pointHistoryNum, int pointPolicyType, String customerId, int pointHistoryScore,
			String pointHistoryUpdateDate) {
		super();
		this.pointHistoryNum = pointHistoryNum;
		this.pointPolicyType = pointPolicyType;
		this.customerId = customerId;
		this.pointHistoryScore = pointHistoryScore;
		this.pointHistoryUpdateDate = pointHistoryUpdateDate;
	}

	public int getPointHistoryNum() {
		return pointHistoryNum;
	}

	public void setPointHistoryNum(int pointHistoryNum) {
		this.pointHistoryNum = pointHistoryNum;
	}

	public int getPointPolicyType() {
		return pointPolicyType;
	}

	public void setPointPolicyType(int pointPolicyType) {
		this.pointPolicyType = pointPolicyType;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public int getPointHistoryScore() {
		return pointHistoryScore;
	}

	public void setPointHistoryScore(int pointHistoryScore) {
		this.pointHistoryScore = pointHistoryScore;
	}

	public String getPointHistoryUpdateDate() {
		return pointHistoryUpdateDate;
	}

	public void setPointHistoryUpdateDate(String pointHistoryUpdateDate) {
		this.pointHistoryUpdateDate = pointHistoryUpdateDate;
	}

	@Override
	public String toString() {
		return "PointHistory [pointHistoryNum=" + pointHistoryNum + ", pointPolicyType=" + pointPolicyType
				+ ", customerId=" + customerId + ", pointHistoryScore=" + pointHistoryScore
				+ ", pointHistoryUpdateDate=" + pointHistoryUpdateDate + "]";
	}
	
}
