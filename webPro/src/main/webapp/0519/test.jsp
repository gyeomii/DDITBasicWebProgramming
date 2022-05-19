<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 스크립트릿(scritlet) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
	<h3>JSP : Java Server Page</h3>
	요청시 클라이언트가 보내는 데이터를 받아서 처리한다. 
	(controller의 역할을 수행)
	자바 문장과 html 문장을 혼합하여 사용할 수 있다
	자바 문장 기술을 위해 &lt;% %> 기호를 사용한다
	html 문장에서 java 변수를 출력하기 위해 &lt;%= %> 기호를 사용한다
	</pre>
	
	<%
	//post방식으로 데이터를 받을 때는 캐릭터 셋팅 필요
	request.setCharacterEncoding("utf-8");
	//데이터 전달받기
	String id = request.getParameter("userId");
	String pw = request.getParameter("userPw");
	%>

	id : <%=id%> <br>
	pw : <%=pw%>
</body>
</html>