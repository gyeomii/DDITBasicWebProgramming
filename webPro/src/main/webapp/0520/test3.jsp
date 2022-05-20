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
	String[] car = request.getParameterValues("cars");
	String area = request.getParameter("ta");

	area = area.replace("\r", "").replace("\n", "<br>");
	String carArr = "";

	for (int i = 0; i < car.length; i++) {
		if (i == 0) {
			carArr += car[i];
		} else {
			carArr += " , " + car[i];
		}
	}
	// \r\n를 <br>태그로 변경
	%>
	&lt텍스트 영역> <br>
	<%=area%> <br>
	<%="Dream cars : " + carArr%> <br>
	
</body>
</html>