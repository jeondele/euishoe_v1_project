<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

    
<%
String userid = request.getParameter("username");
String userpw = request.getParameter("password");
String idRemember = request.getParameter("idRem");


// 로그인 버튼 클릭 시,
// UserDao를 이용한 회원 가입여부 체크
// user 객체가 반환되는 경우(아이디와 패스워드가 일치하는 객체가 있는 경우) -> 로그인 성공되도록
DaoFactory factory = (DaoFactory)application.getAttribute("factory");
UserDao dao = factory.getUserDao();
User user = dao.certify(userid, userpw);

Cookie cookie = null;

if(user != null){
   cookie = new Cookie("loginId", user.getId());
   cookie.setPath("/");
   response.addCookie(cookie);
   // 아이디 기억 체크박스 클릭이 되어 있는 경우, 해당 아이디의 쿠키를 한개 더 생성 -> 로그아웃 되어도 아이디 입력필드에 값을 기억하기 위함
   if(request.getParameter("idRem") != null) {
        Cookie remCookie = new Cookie("idRem", user.getId()); 
        remCookie.setPath("/");
        remCookie.setMaxAge(60 * 60 * 24 * 365);
        response.addCookie(remCookie);
   } 
   // 체크박스 클릭되어 있지 않은 경우, 해당 아이디 쿠키 한개만 생성
   else if (request.getParameter("idRem") == null) {
	   Cookie[] cookies = request.getCookies();
	    for(Cookie cookie2:cookies){
	      if(cookie2.getName().equals("idRem")){
	        cookie2.setMaxAge(0);
	        cookie2.setPath("/");
	        response.addCookie(cookie2);
	      }
	    }
   }
   // 응답 객체를 index.jsp(메인화면)으로 redirecting
   response.sendRedirect(application.getContextPath() + "/index.jsp");
} else {
   // 회원이 아닌 경우 회원가입 유도 페이지로 이동
   response.sendRedirect(application.getContextPath() + "/user/login_error.jsp");
}
%>