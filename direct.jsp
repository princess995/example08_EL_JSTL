<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!-- @ 넣는건 지시자(direct)태그 %@ 다음에 page 씀. -->
<%@ include file="aaa.jsp" %>
<!-- include 지금 작업중인 jsp에 aaa.jsp를 포함한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="bbb.jsp"></jsp:include>
<!-- 이렇게 사용해도 됨. include 라는 액션태그가 있다. -->
<!-- 액션태그 중 사용빈도 높은 건 include forward useBean 세가지 추가로 setProperty와 getProperty 는 useBean 에 포함되는 것 -->
<jsp:forward page="ccc.jsp"></jsp:forward>
<!-- 데이터를 바로 보내는 방식 -->
</body>
</html>