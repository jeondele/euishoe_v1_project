<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!-- 
// 사용자 입력값 받아옴
String customerId = request.getParameter("userid");
String customerPassword = request.getParameter("password");
String customerName = request.getParameter("userName");
String customerPhonenumber = request.getParameter("userPhone");
String customerEmail = request.getParameter("email")+"@"+request.getParameter("emailHost");
String customerPostcode = request.getParameter("postNum"); 
String customerAddress =  request.getParameter("address");
String customerBirthday = request.getParameter("birth");
String customerGender = request.getParameter("gender");
String customerJacketSize = request.getParameter("jacketSize");
String customerPantsSize = request.getParameter("pantsSize");
String customerHeight = request.getParameter("height");
-->

<!-- customer객체(bean) 생성 -->
<jsp:useBean id="customer" class="com.euishoe.customers.dto.Customer" scope="request"/>
<jsp:setProperty property="*" name="customer"/>
<jsp:forward page="/user/join_result.jsp"/>
<jsp:forward page=""/>
