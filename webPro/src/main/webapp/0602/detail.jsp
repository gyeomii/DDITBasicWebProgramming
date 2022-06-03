<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
	JDBC(Java DataBase Connectivity)를 이용한  DB Connection
	: 자바에서  DB에 접솔할 수 있도록 하는 API
	
</pre>
<%
	String nm = request.getParameter("name");
	//서비스 호출하여 데이터 전달
	
	//처리구조 - MVC1, MVC2
	//MVC2 - model, view, controller로 세분화 시켜 데이터를 처리
	//view 와 controller역할을 jsp에서 담당
	// service와 dao로 연결하여 sql문 실행 후 데이터 다시 반환
	
	//Controller >> Service >> Dao (Connection객체로 DB접근 후 sql문 실행) >> Service(데이터 처리 후) >> Controller >> View
	


%>	

<%-- 전달받은 요청데이터 : <%=nm %> --%>
  <table border="1">
    <tr>
      <th>이름</th>
      <th>아이디</th>
      <th>핸드폰</th>
      <th>이메일</th>
    </tr>
    <tr>
      <td><%=nm %></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </table>
</body>
</html>