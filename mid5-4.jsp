<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
kor = Integer.parseInt(request.getParameter("kor"));
eng = Integer.parseInt(request.getParameter("eng"));
mat = Integer.parseInt(request.getParameter("mat"));
tot = kor+eng+mat;
request.setAttribute("avg", (tot/3.));
RequestDispatcher rd = request.getRequestDispatcher("out5.jsp");
rd.forward(request, response);
%>

</body>
</html>