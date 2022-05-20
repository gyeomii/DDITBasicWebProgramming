<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String bir = request.getParameter("bir");
	String num = request.getParameter("num");
	String rg = request.getParameter("rg");
%>

이름 : <%=name %> <br>
성별 : <%=gender %> <br>
메일 : <%=mail %> <br>
전화 : <%=phone %> <br>
생일 : <%=bir %> <br>
넘버 : <%=num %> <br>
범위 : <%=rg %> <br>


</body>
</html>