<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String dongData = request.getParameter("dong");
Class.forName("oracle.jdbc.driver.OracleDriver"); 
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "KSG97";
String password = "java";
Connection conn = DriverManager.getConnection(url, user, password);
Statement stmt = conn.createStatement();

String v_dong = dongData.replace("동", "");
ResultSet rs = stmt.executeQuery("select * from ziptb where dong like '" + v_dong + "%'");
%>
[
<%
int i = 0;
while(rs.next()){	//조회한 값이 존재할 때 - 중복 id
	String zipCode = rs.getString("zipcode");
	String sido = rs.getString("sido");
	String gugun = rs.getString("gugun");
	String dong = rs.getString("dong");
	String bunji = rs.getString("bunji");
	if(bunji == null) bunji = "";
	if(i>0) out.print(",");
%>
		{ 
			"zipCode" : "<%=zipCode%>",
			"addr" : "<%=sido%> <%=gugun%> <%=dong%>",
			"bunji" : "<%=bunji%>"
		} 
<%
	i++;
} 
%>
]