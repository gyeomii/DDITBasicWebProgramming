<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//커넥션 객체 만들고 
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "KSG97";
String password = "java";
Connection conn = DriverManager.getConnection(url, user, password);

//db에 접근해서 sql실행하고 
Statement stmt = conn.createStatement();
String sql = "select * from lprod";
// stmt.executeQuery(sql);
ResultSet rs = stmt.executeQuery(sql);
%>
<table border='1'>
	<tr>
		<th>lprod_id</th>
		<th>lprod_gu</th>
		<th>lprod_nm</th>
	</tr>
<%
//결과값 을 받아서 json object array로 만들어서
int i = 0;
while (rs.next()) {
	int id = rs.getInt("lprod_id");
	String gu = rs.getString("lprod_gu");
	String nm = rs.getString("lprod_nm");
	//html table형태로 결과 작성
%>
	<tr>
		<td><%=id%></td>
		<td><%=gu%></td>
		<td><%=nm%></td>
	</tr>
<%	
} //while end
%>
</table>
