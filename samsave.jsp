<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--
//DBCP = connecton(연결) Pool(저장공간)
//Oracle 작동방식 = 1 driver 방식 == 클라이언트가 요청할 때 마다 연결해서 사용되는 방식
//				 2. DBCP방식 == 이미 객체를 만들어놓은 다음에 요청이 들어오면 바로 연결 
-->

<%!
String name;
int kor;
Connection con;
PreparedStatement pstmt;
ResultSet res;
DataSource ds;	//1
%>

<%
request.setCharacterEncoding("utf-8");
name = request.getParameter("name");
kor = Integer.parseInt(request.getParameter("kor"));
Context cont = new InitialContext();	//2
ds = (DataSource)cont.lookup("java:comp/env/jdbc/oracle");	//3
con = ds.getConnection();	//4

String sql = "insert into ezen values(?, ?)";
pstmt = con.prepareStatement(sql);
pstmt.setString(1, name);
pstmt.setInt(2, kor);
int k = pstmt.executeUpdate();

if(k==1)
	{ response.sendRedirect("samout.jsp"); }
%>

</body>
</html>