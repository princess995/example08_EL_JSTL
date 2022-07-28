<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function check() {
	var f = document.frm;
	
//체크박스 개수제한	
	var h = document.getElementsByName("hobby");
	var cnt=0;
	for(var i=0; i<h.length; i++) 
	{
		if(h[i].checked) //체크박스에 체크가 되어 있는지 묻는 것.
			cnt++;
	}
	if(cnt<2 || cnt>4)	//1개만 고르거나 5개를 다 고르거나 하는건 안됨.
	{
		alert("체크박스 선택은 2~4개만 가능합니다.");
	}

//이름
	var n = document.frm.name.value;
	if(n=="고길동")
	{
		alert("고길동 파이팅!")
	}

//나이
	var a = document.frm.age.value;
	if(a>101 || a<10)
	{
		alert("나이를 제대로 입력해주세요")
	}
}

</script>

</head>
<body>
<form name="frm">
<h3>이름</h3> <br>
	<input type="text" name="name" id="name">

<h3>나이</h3> <br>
	<input type="text" name="age" id="age">  

<h3>취미</h3> <br>
	<input type="checkbox" name="hobby" id="hobby" value="read"> 독서
	<input type="checkbox" name="hobby" id="hobby" value="workout"> 운동
	<input type="checkbox" name="hobby" id="hobby" value="travel"> 여행
	<input type="checkbox" name="hobby" id="hobby" value="movie"> 영화
	<input type="checkbox" name="hobby" id="hobby" value="etc"> 기타
<br><br>
<input type="button" value="전송" onclick="check()">
</form>
</body>
</html>