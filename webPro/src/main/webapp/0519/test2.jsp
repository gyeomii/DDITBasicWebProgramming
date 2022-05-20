<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
text-align: center;
}
</style>
</head>
<body>

</body>
</html>
<%
request.setCharacterEncoding("utf-8");
String nm = request.getParameter("name");
String gd = request.getParameter("gender");
String hd = request.getParameter("hdn");
String[] fd = request.getParameterValues("food");
String fl = request.getParameter("file");

String fdArr = "";
int cnt = 0;
for (int i = 0; i < fd.length; i++) {
	if (cnt == 0) {
		fdArr += fd[i];
	} else {
		fdArr += " , " + fd[i];
	}
	cnt++;
}
%>
&lt&lt<%=nm%><%=hd%>>>
<br>
<br>
이름 : <%=nm%>
<br>
성별 : <%=gd%>
<br>
좋아하는 음식 : <%=fdArr%>
<br>
전송한 파일 : &lt<%=fl%>>

