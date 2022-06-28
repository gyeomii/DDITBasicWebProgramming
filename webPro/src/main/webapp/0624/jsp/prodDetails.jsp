<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String prodId = request.getParameter("prodId");
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
	String prodName = rs.getString("prod_name");
	String prodPrice = rs.getString("prod_price");
	String prodSize = rs.getString("prod_size");
	String prodColor = rs.getString("prod_color");
	String prodOutline = rs.getString("prod_outline");
	String prodImg = rs.getString("prod_img");
	if(prodSize == null){prodSize = "";}
	if(prodColor == null){prodColor = "";}
%>
	    {
		"code" : "ok",
		"value" :[
					{
						"prodName" : "<%=prodName%>",
						"prodId" : "<%=prodId%>",
						"prodPrice" : "<%=prodPrice%>",
						"prodSize" : "<%=prodSize%>",
						"prodColor" : "<%=prodColor%>",
						"prodOutline" : "<%=prodOutline%>"
				  	}
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