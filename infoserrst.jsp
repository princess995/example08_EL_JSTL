<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! String id, pw, name, gender, address; %>

<%
ResultSet res = (ResultSet) request.getAttribute("res");

if(res.next())
{
	String id =  res.getString(1);
	String pw = res.getString(2);
	String name = res.getString(3);
	String gender = res.getString(4);
	String address = res.getString(5);
}
%>

<table width="500" align="center" >
	<tr>
		<th>아이디</th> <th>비밀번호</th> <th>이름</th>
		<th>성별</th> <th>주소</th>
	</tr>
		<tr>
		<td><%=id %></td> <td><%=pw %></td> <td><%=name %></td>
		<td><%=gender %></td> <td><%=address %></td>
	</tr>
</table>

</body>
</html>