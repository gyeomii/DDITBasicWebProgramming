<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String str1 = request.getParameter("str1");
  String str2 = request.getParameter("str2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/outStyle.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/jquery-3.6.0.min.js"></script>
<style>
	body{
		text-align: center;
	}
	img{
		width: 200px;
		height: 200px;
	}
	#bing{
		width: 300px;
		height: 300px;
	}
	input{
		width: 100px;
		height: 50px;
	}
</style>
</head>
<body>
<%=str1 + "-" + str2 %>
	<pre>
		&lt proxy pattern>
		Start Rotate 버튼을 누르면 이미지의 순서가 바뀐다.
		Stop 버튼을 누르면 멈춘다.

		&lt proxy pattern X>
		start 버튼을 누르면 이미지가 회전
		여러번 누르면 빨라짐
	</pre>
	<div id="target">
		<img alt="pic" src="../images/popcat_open.png">
		<img alt="pic" src="../images/popcat_close.png">
		<img alt="pic" src="../images/yee2.png">
		<img alt="pic" src="../images/라온.png">
		<img alt="pic" src="../images/mew.jpg">
	</div>
	<hr>
	<p>
		<input type="button" value="Start Rotate">
		<input type="button" value="Stop">
	</p>
	<hr>
	<p>
		<img id="bing" src="../images/건영.jpg">
	</p>
	<hr>
	<button type="button" id="start">Start Rotate</button>
	<button type="button" id="stop">Stop</button>
<script type="text/javascript">
let startChecker = false; //ì¤íì¤ X
let start
function proxyCall(){
	if (!startChecker) {
		rotation();
	}
	startChecker = true; //íë²ë§ ì¤ííê²íê¸°
}
function callEnd() {
	//clearTimeout(setTimeoutê°ì²´)ì¤í
	clearTimeout(startRotation);
	startChecker = false;
}
function rotation() {
	$('[alt=pic]').first().appendTo('#target'); //
	startRotation = setTimeout(rotation,500); //ì¬ê·í¸ì¶ setTimeoutì ë ë§ì´ íì©íë¤ê³  í¨ ì¤ë¬´ìì
}

$('input[value="Start Rotate"]').on('click',proxyCall);
$('input[value="Stop"]').on('click',callEnd);
//===================================================================
let angle=0;
let bingbing;
$('button[id=start]').on('click',function bingbingbing(){
	angle += 1;
	$("#bing").css({'transform': 'rotate('+angle+'deg)'});
	bingbing =  setTimeout(bingbingbing,10);
})
$('button[id=stop]').on('click',function (){
	clearTimeout(bingbing);
})

</script>
</body>
</html>