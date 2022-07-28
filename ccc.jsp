<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	// 1. 함수는 크게 4가지. 주는것, 받는것, 전달하는것, 한개는 뭔지 왜 말 안해주지
//function aaa()
//	{
//		document.write("홍길동");
//	}

	// 2.
//function aaa(k)
//	{
//		document.write(k*k);
//	}
	
	// 3.
//function aaa(k)
//	{
//		return k*k;
//	}
	
	// 4. 1-100까지 더할 때 합이 3000을 넘는 순간의 수를 확인하라
//function aaa(a)
//	{
//		var i = 1;
//		while(i=>100)
//			{
//			i++;
//			a = a+i;
//			if(a>=3000) { return i; break;}
//			}
//			
//	}
	
	// 5.
//function aaa(k)
//	{
//		if(isNaN(k))
//			{ document.write("숫자가 아닙니다.") }
//		else{
//		for (var i=1; i<=9; i++)
//			{
//			document.write(k+"x"+i+"="+(k*i)+"<br>");
//			}
//		}
//	}
	//문자를 입력하면 NaN = Not a Number 에러가 뜬다. so 맨 위에 if문으로 한번 물어보게한다.

	// 6. eval함수
//function aaa()
//	{
//		var su="3+6*4-3"
//		document.write("식 : "+su+"<br>");
//		
//		var so=eval("3+6*4-3");
//		document.write("답 : "+so+"<br>");
//	}
	
	// 7.
function aaa()
	{
		var so = eval(a);
		return so;
	}


</script>

</head>
<body>

<script type="text/javascript">

	// 1.
//aaa(); //aaa에게 일을 시킴

	// 2.
//aaa(6);

	// 3.
//var kk = aaa(3);
//document.write(kk);

	// 4.
//var k = aaa(0);
//document.write(k);

	// 5.
//var k = parseInt(prompt("원하는 구구단"));
//aaa(k);

	// 6.
//aaa();
	
	// 7.
var a = prompt("식");
var k = aaa(a);
document.write(k);

</script>

</body>
</html>