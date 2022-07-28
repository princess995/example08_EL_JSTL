<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

	// 1.
//var today = new Date();		//객체 만들고,
//document.write(today.toLocaleString()+"<br>");		//그 안의 메소드 사용하기
//document.write(today.toLocaleDateString()+"<br>");
//document.write(today.toLocaleTimeString()+"<br>");

	// 2.
//var str = "오늘부터 우리는";
//document.write(str.substr(0, 3));

	// 3.
var a = [67,99,56,78,88];
document.write("67, 99, 56, 78, 88"+"<br>");


	for(var i=0; i<5; i++)
		{
			var b = a[i]/10;
			document.write(a[i]);
			for(var j=0; j<b; j++)
				{
				document.write("*");
				}
			document.write("<br>");
		}
	
</script>
</body>
</html>