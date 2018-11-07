<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

    
<%
String userid = request.getParameter("username");
String userpw = request.getParameter("password");
String idRemember = request.getParameter("idRem");


// �α��� ��ư Ŭ�� ��,
// UserDao�� �̿��� ȸ�� ���Կ��� üũ
// user ��ü�� ��ȯ�Ǵ� ���(���̵�� �н����尡 ��ġ�ϴ� ��ü�� �ִ� ���) -> �α��� �����ǵ���
DaoFactory factory = (DaoFactory)application.getAttribute("factory");
UserDao dao = factory.getUserDao();
User user = dao.certify(userid, userpw);

Cookie cookie = null;

if(user != null){
   cookie = new Cookie("loginId", user.getId());
   cookie.setPath("/");
   response.addCookie(cookie);
   // ���̵� ��� üũ�ڽ� Ŭ���� �Ǿ� �ִ� ���, �ش� ���̵��� ��Ű�� �Ѱ� �� ���� -> �α׾ƿ� �Ǿ ���̵� �Է��ʵ忡 ���� ����ϱ� ����
   if(request.getParameter("idRem") != null) {
        Cookie remCookie = new Cookie("idRem", user.getId()); 
        remCookie.setPath("/");
        remCookie.setMaxAge(60 * 60 * 24 * 365);
        response.addCookie(remCookie);
   } 
   // üũ�ڽ� Ŭ���Ǿ� ���� ���� ���, �ش� ���̵� ��Ű �Ѱ��� ����
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
   // ���� ��ü�� index.jsp(����ȭ��)���� redirecting
   response.sendRedirect(application.getContextPath() + "/index.jsp");
} else {
   // ȸ���� �ƴ� ��� ȸ������ ���� �������� �̵�
   response.sendRedirect(application.getContextPath() + "/user/login_error.jsp");
}
%>