<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <!-- 하단의 avg 형식을 지정하기위해 추가해야. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String name; int kor, eng, mat, tot; double avg; %>

<%
name = request.getParameter("name");
kor = Integer.parseInt(request.getParameter("kor"));
eng = Integer.parseInt(request.getParameter("eng"));
mat = Integer.parseInt(request.getParameter("mat"));
%>

<c:set var="tot" value="<%=kor+eng+mat %>"></c:set>
<c:set var="avg" value="${tot/3. }"></c:set>

<c:choose>
	<c:when test="${avg>=90 }">
		<c:set var="grd" value="A"></c:set>
	</c:when>
	
	<c:when test="${avg>=80 }">
		<c:set var="grd" value="B"></c:set>
	</c:when>
	
	<c:when test="${avg>=70 }">
		<c:set var="grd" value="C"></c:set>
	</c:when>
	
	<c:when test="${avg>=60 }">
		<c:set var="grd" value="D"></c:set>
	</c:when>
	
	<c:otherwise>
		<c:set var="grd" value="F"></c:set>
	</c:otherwise>
</c:choose>

이름 : <c:out value="<%=name %>"></c:out> <br>
국어 : <c:out value="<%=kor %>"></c:out> <br>
영어 : <c:out value="<%=eng %>"></c:out> <br>
수학 : <c:out value="<%=mat %>"></c:out> <br>
총점 : <c:out value="${tot }"></c:out> <br>
평균 : <fmt:formatNumber value="${avg }" pattern="#,##0.00"/> <br>
학점 : <c:out value="${grd }"></c:out> <br>

<hr>
<!-- 숫자 -->
<c:set var="money" value="123541"></c:set>
? 달러 <fmt:formatNumber value="${money/1200 }" type="currency" currencySymbol="$"/> <br>
? 한화 <fmt:formatNumber value="${money }" pattern="#,###,#00원"></fmt:formatNumber>

<hr>
<!-- 날짜 -->
<c:set var="today" value="<%=new Date() %>"></c:set>
? 날짜 <c:out value="${today }"></c:out> <br>
? 날짜2 <fmt:formatDate value="${today }" type="date"/> <br>
? 시간 <fmt:formatDate value="${today }" type="time"/> <br>
? 야호 <fmt:formatDate value="${today }" type="both"/> <br>
? 와우 <fmt:formatDate value="${today }" type="both" dateStyle="full"/> <br>
? 왐마 <fmt:formatDate value="${today }" pattern="yyyy-MM-dd"/> <br>
? 웜메 <fmt:formatDate value="${today }" pattern="yyyy/M/d"/> <br>
? 한글 <fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일"/> <br>
? 요일 <fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일 E요일"/> <br>
? 요일2 <fmt:formatDate value="${today }" dateStyle="full"/> <br>

</body>
</html>