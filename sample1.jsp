<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- core의 약자로 c를 사용하는거임. -->
<!-- also 상단의 taglib 넣어줘야 작동한닷! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- EL표기법 + JSTL 문법
el표기법 ${} +  
Expression Language + JSP Standard Tag Library(JSP를 지원하는 표준화된 태그)
JSTL 이 어렵기 때문에 el과 함께 사용해 더 간편하게 사용하는 느낌.-->
<h1>
간단한 덧셈
표현식결과 : <%=5+4 %><br>
EL표기법 : ${5+4}<br>



<!-- 변수설정 -->
<c:set var="name" value="고길동"></c:set>

<!-- 변수출력 -->
이름은 : <c:out value="${name}"></c:out> <br>

<c:set var="kor" value="99"></c:set>
국어점수는 : <c:out value="${kor}"></c:out>

</h1>
</body>
</html>