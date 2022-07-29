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

<table width="200" align="center" >
	<tr>
		<th>이름</th> <th>국어</th>
	</tr>
	
<%
Connection con;
PreparedStatement pstmt;
ResultSet res;
DataSource ds;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
con=DriverManager.getConnection(url, "ezen311", "1234");

String sql = "select * from ezen";
pstmt = con.prepareStatement(sql);
res = pstmt.executeQuery();
while(res.next())
{
	String name =  res.getString(1);
	int kor = res.getInt(2);
	%>
	<tr>
		<td><%=name %></td> <td><%=kor %></td>
	</tr>
	
	
	<% } %>
	
	<a href="sample.jsp">입력</a>


</body>
</html>