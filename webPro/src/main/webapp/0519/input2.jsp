<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
		input type = radio	  : 여러 값 중 하나만 선택 가능
		input type = checkbox : 하나 또는 여러개 선택 가능
		input type = hidden	  : 클라이언트에게 보여지지 않지만 서버로 전송되는 숨겨진 값 
	</pre>
	<form action="test2.jsp" method="post">
	    이름 : <input type="text" name="name"> <br>
	    성별 : 남<input type="radio" name="gender" value="Male">
	    	   여<input type="radio" name="gender" value="Female"> <br>
    	<input type="hidden" name="hdn" value="hidden Message">
    	좋아하는 것 : 
	    <input type="checkbox" name="food" value="떡볶이">떡볶이
	    <input type="checkbox" name="food" value="파스타">파스타
	    <input type="checkbox" name="food" value="막창">막창
	    <input type="checkbox" name="food" value="돈까스">돈까스
	    <input type="checkbox" name="food" value="냉면">냉면 <br>
	    <hr>
	    파일 : <input type="file" name="file"> <br>
 		<hr>
		<input type="submit" value="전송">
	    <input type="reset">
    </form>
</body>
</html>