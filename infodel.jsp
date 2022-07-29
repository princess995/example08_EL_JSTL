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

	<%
	Connection con;
	PreparedStatement pstmt;
	ResultSet res;
	DataSource ds;

	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	con=DriverManager.getConnection(url, "ezen311", "1234");
	
	String id = request.getParameter("id");

	String sql = "select * from dbcpex where id = ?";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, "id");
	res = pstmt.executeQuery();
if(res.next())
{
	id =  res.getString(1);
	String pw = res.getString(2);
	String name = res.getString(3);
	String gender = res.getString(4);
	String address = res.getString(5);
	%>
	
<form action="del.do" method="post">
<table width="400" align="center" >
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" value="<%=id %>" readonly></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" name="pw" value="<%=pw %>" readonly></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" value="<%=name %>" readonly></td>
	</tr>
	<tr>
		<th>성별</th>
		<td><input type="text" name="gender" value="<%=gender %>" readonly></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="address" value="<%=address %>" readonly></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit">&emsp;<input type="reset"></td>
	</tr>
</table>
</form>

<%} %>
</body>
</html>