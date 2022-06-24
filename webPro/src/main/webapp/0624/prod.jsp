<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String lprodGu = request.getParameter("lprod_gu");
//커넥션 객체 만들고 
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "KSG97";
String password = "java";
Connection conn = DriverManager.getConnection(url, user, password);

//db에 접근해서 sql실행하고 
Statement stmt = conn.createStatement();
String sql = "select prod_id, prod_name from prod where prod_lgu ='" + lprodGu + "'";
// stmt.executeQuery(sql);
ResultSet rs = stmt.executeQuery(sql);

if (rs.next()) { //데이터 있음
%>
[
<%
int i = 0;
while (rs.next()) {
	String prodId = rs.getString("prod_id");
	String prodNm = rs.getString("prod_name");
	//json object 생성
	if (i > 0) {
		out.print(",");
	}
%>
{ "prod_id" : "<%=prodId%>", "prod_name" : "<%=prodNm%>" }
<%
i++;
} //while end
%>
]
<%
} else { // 데이터 없음
%>
{ "code" : "no" }
<%
}
%>