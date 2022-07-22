<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String uid=request.getParameter("uid");
String sql = "select * from samsevlet where id = ?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1, uid);
res = pstmt.executeQuery();

if(res.next())
{
	String id = res.getString(1);
	String name = res.getString(2);
	int kor = res.getInt(3);
	%>
	<form action="upd" method="get">
	아이디 : <input type="text" name="id" value="<%=id%>" readonly><br>
		<!-- input type 에 hidden 넣으면 화면에 출력하지 않고 넘긴다. -->
	이름 : <input type="text" name="name" placeholder="<%=name%>"><br>
	국어 : <input type="text" name="kor" placeholder="<%=kor%>"><br>
	<input type="submit">
	</form>
<%}
else {response.sendRedirect("error.jsp");}
%>
</body>
</html>