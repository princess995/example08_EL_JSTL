<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
header{background:#ECAA74; font-family:'Nanum Gothic', 돋움; color:white; height:50px; margin-bottom:20px;}
ul{background:white; font-family:'Nanum Gothic', 돋움; color:#DB7521;}
a {text-decoration-line:none; color:#DB7521;}
 #input1 {width : 280px; height : 20px; border:thin; float:right;}
 #input2 {width : 50px; height : 20px; border:thin; float:right;}
</style>
<meta charset="UTF-8">
<title>서적관리 프로그램</title>
</head>
<body>
<header>
	<h2><a href="index2.jsp" style="color:white"> 서적 관리 </a></h2>
	<nav>
		<ul style="list-style-type : circle">
			<li> <a href="in.jsp">도서 입력</a></li> 
			<li> <a href="out.jsp">도서 현황</a> </li>
			 <form action="serch.jsp" method="post"> <input id="input2" type="submit" value="검색"> <input id="input1" type="text" name="serch" placeholder="도서명 또는 저자명으로만 검색 가능합니다."> </form> 
		</ul>
	</nav>
</header>
</body>
</html>