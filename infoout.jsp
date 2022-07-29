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
<table width="500" align="center" >
	<tr>
		<th>아이디</th> <th>비밀번호</th> <th>이름</th>
		<th>성별</th> <th>주소</th> <th>옵션</th>
	</tr>
	
	<%
	Connection con;
	PreparedStatement pstmt;
	ResultSet res;
	DataSource ds;
	Context cont = new InitialContext();
	ds=(DataSource)cont.lookup("java:comp/env/jdbc/oracle");
	con=ds.getConnection();

	String sql = "select * from dbcpex";
	pstmt = con.prepareStatement(sql);
	res = pstmt.executeQuery();
while(res.next())
{
	String id =  res.getString(1);
	String pw = res.getString(2);
	String name = res.getString(3);
	String gender = res.getString(4);
	String address = res.getString(5);
	%>
	
	<tr>
		<td><%=id %></td> <td><%=pw %></td> <td><%=name %></td>
		<td><%=gender %></td> <td><%=address %></td>
		<td><a href = "infoup.jsp?id=<%=id %>">수정</a></td>
		<td><a href = "infodel.jsp?id=<%=id %>">삭제</a></td>
	</tr>
	
<%} %>

</table>
</body>
</html>