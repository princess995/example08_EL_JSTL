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
String sers=request.getParameter("sers");
String sert=request.getParameter("sert");
String sql = "select * from samsevlet ";
//if(sers.equals("name")) {sql+="where name = ?";}
//else if (sers.equals("id")) {sql+="where id = ?";}
//상단의 방식으로 하면 %%를 넣는게 작동하지 않는다. 단 하단 방식으로 하면 %%가 작동한다.
if(sers.equals("name")) sql+=" where name like ?";
else if(sers.equals("id")) sql+=" where id like ?";
// order by ?
pstmt = con.prepareStatement(sql);
pstmt.setString(1, "%"+sert+"%");
//pstmt.setString(2, sers);
res = pstmt.executeQuery();

while(res.next())
{
	String id = res.getString(1);
	String name = res.getString(2);
	int kor = res.getInt(3);
	%>
	아이디 : <input type="text" name="id" value="<%=id%>" readonly><br>
	이름 : <input type="text" name="name" value="<%=name%>" readonly><br>
	국어 : <input type="text" name="kor" value="<%=kor%>" readonly><br>
<%}
%>
</body>
</html>