<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	
	//실제로 요청전달받은 데이터로 결과를 생성해야하지만 생략
	//id,pw를 이용해 로그인 여부 결과를 받았다고 가정한다
	
	String ss = "1";
	if (ss.equals("1")) { //정보 일치
		// json object data 생성하기
		// json object data 는 스크립트릿 외부에 존재해야한다.
		//{"key" : "value"}
%>
  	{
		"msg" : "Login Success","cd" : "ok"
  	}
<%	
	} else {
%>		
  	{
		"msg" : "Login Failed","cd" : "NOT OK"
	}
<%
	} // 정보 불일치
%>