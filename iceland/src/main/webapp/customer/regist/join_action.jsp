<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%

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

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
입력 아이디값: <%=customerId %>
비번: <%=customerPassword %>
email: <%=customerEmail %>
</body>
</html>