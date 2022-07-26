<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <%@include file="top.jsp" %>
    <!-- include file로 topper삽입. -->
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
section{font-family:'Nanum Gothic', 돋움; text-align: center; vertical-align: center;}
a {text-decoration-line:none; color:#DB7521;}
</style>
<meta charset="UTF-8">
<title>서적관리 프로그램</title>
</head>
<body>
<section>
<br>
<h3><a href = "in.jsp">도서 입력</a></h3>

<h3><a href = "out.jsp">도서 현황</a></h3>

</section>
</body>
<jsp:include page="footer.jsp" />

</html>