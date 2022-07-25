<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
String name;
int kor, eng, mat;
int tot;
double avg;
%>

<%
request.setCharacterEncoding("UTF-8");
name = request.getParameter("name");
name = URLEncoder.encode(name, "UTF-8");
kor = Integer.parseInt(request.getParameter("kor"));
eng = Integer.parseInt(request.getParameter("eng"));
mat = Integer.parseInt(request.getParameter("mat"));
tot = kor+eng+mat;
avg = tot/3.;
response.sendRedirect("out5.jsp?name="+name+"&kor="+kor+"&eng="+eng+"&mat="+mat+"&tot="+tot+"&avg="+avg);
%>

</body>
</html>