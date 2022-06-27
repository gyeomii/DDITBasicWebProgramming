<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String prodId = request.getParameter("prod_id");
//커넥션 객체 만들고 
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "KSG97";
String password = "java";
Connection conn = DriverManager.getConnection(url, user, password);

//db에 접근해서 sql실행하고 
Statement stmt = conn.createStatement();
String sql = "select * from prod where prod_id = '" + prodId + "'";
// stmt.executeQuery(sql);
ResultSet rs = stmt.executeQuery(sql);

if(rs.next()){	//데이터가 있음
%>
	{
		"code" : "ok",
		"value" : [
<%
		int i = 0;
		while(rs.next()){
		//index로 쉼표 추가
			if(i>0) out.print(",");
%>			
			{
				"prodId" : "<%=rs.getString("prod_id") %>",
				"prodNm" : "<%=rs.getString("prod_name") %>",
				"prodDetails" : "<%=rs.getString("column") %>",
				"prodDetails" : "<%=rs.getString("column") %>",
				"prodDetails" : "<%=rs.getString("column") %>"
			}
<% 			
			i++;
		}//while end
%>
		]
	}
<%
}else{ 			//데이터가 없음
%>		
		{
			"code" : "no"
		}
<%	
}//if end
%>