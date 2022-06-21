<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 이번예제에서 --%>
<%-- 현재 전달받는 요청데이터는 없음 --%>
<%-- 임의의 데이터를 생성하여 전달하도록 함 --%>

<%-- Java Server Page : Controller 역할 --%>
<%-- 요청정보를 받고 결과데이터를 뷰로 보내줌 --%>

<%-- 
javascript object는 json데이터 형식이 아님
{name : "홍길동", addr : "대전", tel : "010-1234-5678"}
 --%>

<%-- 
json object
{"name" : "홍길동", "addr" : "대전", "tel" : "010-1234-5678"}

array 
[ "홍길동", "개나리", "진달래", "이도령" ]

json object array
--%>
[
  {"name" : "장재훈", "addr" : "대전", "tel" : "010-1111-1111"},
  {"name" : "윤재열", "addr" : "대전", "tel" : "010-2222-2222"},
  {"name" : "김미정", "addr" : "대전", "tel" : "010-3333-3333"},
  {"name" : "김성겸", "addr" : "대전", "tel" : "010-1234-1234"}
]
