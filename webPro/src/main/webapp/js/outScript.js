//리터럴방식으로 배열 생성하기
function proc1(){
	var arr = ["왜",12,"theLuv",true,1.234];
	var d1 = document.getElementById('d1'); //출력공간
	var arrData = "";
	for(var i=0; i<arr.length; i++){
		if(i != 0){
			arrData += ", " + arr[i];
		}else{
			arrData += arr[i];
		}
	}
	d1.innerText = arrData;
}
//생성자로 배열 생성하기1
function proc2(){
	var arr = new Array("수박","참외","포도","자두");
	
	//d2공간에 표현
	print(arr, 'd2');
}
//생성자로 배열 생성하기2
function proc3(){
	var arr = new Array();
	arr[0] = "음";
	arr[1] = "오";
	arr[2] = "아";
	arr[3] = "예";
	
	//d3공간에 표현
	print(arr, 'd3');
}
function print(arr, id){
    var arrData = "";
	for(var i=0; i<arr.length; i++){
		if(i != 0){
			arrData += ", " + arr[i];
		}else{
			arrData += arr[i];
		}
	}
	document.getElementById(id).textContent = arrData;
}