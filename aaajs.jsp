<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
String sname,svalue;
%>
<%
res =(ResultSet) request.getAttribute("res");

%>
<table border="1" width="300" align="center">
<caption>회원정보현황</caption>
<thead>
   <tr>
      <th>아이디</th><th>이름</th><th>국어</th>
   </tr>
</thead>
<%
  if(res.next()){
     String id=res.getString(1);
     String name=res.getString(2);
     int kor=res.getInt(3);
     %>
   <tr>
      <td><%=id %></td><td><%=name %></td><td><%=kor %></td>
   </tr>  
<%     
  }

%>
</table>
<br>
<a href="main.jsp">메인으로...</a>
</body>
</html>