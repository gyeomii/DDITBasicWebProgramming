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
	String info = request.getParameter("info");
%>    

전달받은 데이터는 <%=info%> <br>
<%= "전달받은 데이터는 " + info%> <br>

</body>
</html>