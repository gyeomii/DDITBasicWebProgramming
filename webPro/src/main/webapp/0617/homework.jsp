<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String age = request.getParameter("age");
String nm = request.getParameter("name");
%>
<%=nm%>님 방문을 환영합니다. <hr>
나이 : <%=age%> <hr>