<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:choose>
	<c:when test="${empty param.id }">
		<form>
			아이디 : <input type="text" name="id">
			<input type=submit>
		</form>
	</c:when>
	
	<c:when test="${param.id=='admin'}">
		<c:set var="man" value="관리자네용"></c:set>
	</c:when>
	
	<c:when test="${param.id=='user' }">
		<c:set var="man" value="일반 사용자에용"></c:set>
	</c:when>
	
	<c:otherwise>
		<c:set var="man" value="회원가입하세요."></c:set>
	</c:otherwise>
</c:choose>

당신은 : <c:out value="${man }"></c:out>

</body>
</html>