<%@page import="kr.or.ddit.Service"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/outStyle.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap" rel="stylesheet">
<style>
* {
	font-family: 'Playfair Display', serif;
	font-size: large;
}

body {
	background: #FFFFFF;
}

table {
	border: 5px solid #000000;
	background: #FFFFFF;
	border-collapse: collapse;
}

td {
	height: 40px;
	text-align: center;
}
</style>
</head>
<body>
<pre>
	JDBC(Java DataBase Connectivity)를 이용한  DB Connection
	: 자바에서  DB에 접솔할 수 있도록 하는 API
</pre>
<%
	String nm = request.getParameter("name");
	//Service 메소드 호출하여 데이터 전달
	Service service = Service.getinstance();
	Map<String,Object> map = service.selectMemberOne(nm);
	String mId = (String)map.get("id");
	String mHp = (String)map.get("hp");
	String mMail = (String)map.get("mail");
	//처리구조 - MVC1, MVC2
	//MVC2 - model, view, controller로 세분화 시켜 데이터를 처리
	//view 와 controller역할을 jsp에서 담당
	// service와 dao로 연결하여 sql문 실행 후 데이터 다시 반환
	
	//Controller >> Service >> Dao (Connection객체로 DB접근 후 sql문 실행) >> Service(데이터 처리 후) >> Controller >> View
%>	

<%-- 전달받은 요청데이터 : <%=nm %> --%>
  <table border="1">
    <tr>
      <th>name</th>
      <th>User ID</th>
      <th>HP</th>
      <th>E-Mail</th>
    </tr>
    <tr>
      <td><%=nm %></td>
      <td><%=mId %></td>
      <td><%=mHp %></td>
      <td><%=mMail %></td>
    </tr>
  </table>
</body>
</html>