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

MemberVO memberVo = new MemberVO();
//BeanUtis : map을 bean객체로 바꿔주는 클래스
//			>>  java bean(vo)객체에 맞춰 값을 자동으로 넣음
BeanUtils.populate(memberVo, request.getParameterMap());

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "KSG97";
String password = "java";
Connection conn = DriverManager.getConnection(url, user, password);

String sql = "insert into member (mem_id, mem_pass, mem_name, mem_) values();'";

PreparedStatement pstmt =  conn.prepareStatement(sql);

%>