<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.nio.Buffer"%>
<%@page import="java.awt.image.DataBufferDouble"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.beanutils.BeanUtils"%>
<%@page import="kr.or.ddit.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("utf-8");

//json object를 받고
BufferedReader rd = request.getReader();
String jsonData = rd.readLine();

Map<String, Object> map = new HashMap<>();
MemberVO memberVo = new MemberVO();

//json object -> js object로 변경 필요 - gson 사용
JsonParser jsonParser = new JsonParser();
JsonArray jsonArray = (JsonArray) jsonParser.parse(jsonData);
for(int i = 0; i < jsonArray.size(); i++){
	JsonObject jsonObj = (JsonObject) jsonArray.get(i);
	
	String key = jsonObj.get("name").getAsString();
	String value = jsonObj.get("value").getAsString();
	
	map.put(key, value);
}
BeanUtils.populate(memberVo, map);

//BeanUtis : map을 bean객체로 바꿔주는 클래스
//			>>  java bean(vo)객체에 맞춰 값을 자동으로 넣음
//BeanUtils.populate(memberVo, request.getParameterMap());

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "KSG97";
String password = "java";
Connection conn = DriverManager.getConnection(url, user, password);

String sql = "insert into member (mem_id, mem_pass, mem_name, mem_bir, mem_zip, mem_add1, mem_add2, mem_hp, mem_mail) " + 
					"values(?,?,?,?,?,?,?,?,?)";

PreparedStatement pstmt =  conn.prepareStatement(sql);
pstmt.setString(1, memberVo.getMem_id());
pstmt.setString(2, memberVo.getMem_pass());
pstmt.setString(3, memberVo.getMem_name());
pstmt.setString(4, memberVo.getMem_bir());
pstmt.setString(5, memberVo.getMem_zip());
pstmt.setString(6, memberVo.getMem_add1());
pstmt.setString(7, memberVo.getMem_add2());
pstmt.setString(8, memberVo.getMem_hp());
pstmt.setString(9, memberVo.getMem_mail());

int cnt = pstmt.executeUpdate();
System.out.print(cnt);
%>

<%=cnt%>