<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<ul id="navlist" style="margin-top: 15px;color: white;">
	<li>
	<%
	out.print(session.getAttribute("sessionId")+"님 환영홥니다"); 
	 %>
	</ul>
	<input type="button" name="input" value="로그아웃" onClick="window.location='logoutConfirm.jsp'"/>