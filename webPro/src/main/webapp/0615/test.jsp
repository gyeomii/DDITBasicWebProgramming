<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
// 	String hb = request.getParameter("hobby"); //단일데이터
String[] hb = request.getParameterValues("hobby");
String result = "";
if (hb != null) {
	for (int i = 0; i < hb.length; i++) {
		result += hb[i];
	}
} else {
	result = "hobby data is not entered <br><br>";
}

String[] opt = request.getParameterValues("flower");
String flower = "";
if (opt != null) {
	for (int j = 0; j < opt.length; j++) {
		flower += opt[j];
	}
} else {
	flower = "flower data is not entered <br><br>";
}
%>
<%=result%> <hr>
<%=flower%>