<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>

	<%!String id, pw, name, gender, address;
	Connection con;
	PreparedStatement pstmt;
	ResultSet res;
	DataSource ds;
	%>
	<%
	Context cont = new InitialContext();
	ds=(DataSource)cont.lookup("java:comp/env/jdbc/oracle");
	con=ds.getConnection();
	id=request.getParameter("id");
	String sql="select * from dbcpex where id=?";
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1, id);
	res=pstmt.executeQuery();
	while(res.next())
	{
		id=res.getString(1);
		pw=res.getString(2);
		name=res.getString(3);
		gender=res.getString(4);
		address=res.getString(5);
	%>

	<form action="up.do" method="post">
		<table width="400" align="center">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" value="<%=id %>" readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="pw" placeholder="<%=pw %>"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" placeholder="<%=name %>"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="text" name="gender" placeholder="<%=gender %>"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address"
					placeholder="<%=address %>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송">&emsp;<input
					type="reset"></td>
			</tr>



			<%}%>
		</table>
	</form>
</body>
</html>