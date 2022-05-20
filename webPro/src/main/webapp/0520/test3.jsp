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

	String carArr = "";
	int cnt = 0;
	for (int i = 0; i < car.length; i++) {
		if (cnt == 0) {
			carArr += car[i];
		} else {
			carArr += " , " + car[i];
		}
		cnt++;
	}
	// \r\n를 <br>태그로 변경
	area = area.replaceAll("\r", "").replaceAll("\n", "<br>");
	%>
	&lt텍스트 영역> <br>
	<%=area%> <br>
	<%="Dream cars : " + carArr%> <br>
	
</body>
</html>