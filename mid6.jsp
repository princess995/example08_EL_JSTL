<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.ezen.DTO6" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
String name;
int kor, eng, mat, tot;
double avg;
ArrayList<DTO6> list = new ArrayList<DTO6>();
%>

<%
request.setCharacterEncoding("UTF-8");
name = request.getParameter("name");
kor = Integer.parseInt(request.getParameter("kor"));
eng = Integer.parseInt(request.getParameter("eng"));
mat = Integer.parseInt(request.getParameter("mat"));

tot = (kor+eng+mat);
avg = tot/3.;

DTO6 dto = new DTO6();
dto.setName(name);
dto.setKor(kor);
dto.setEng(eng);
dto.setMat(mat);
dto.setTot(tot);
dto.setAvg(avg);

list.add(dto);

%>


<table border="1" width="700">
	<tr>
		<th>이름</th> <th>국어</th> <th>영어</th> <th>수학</th> <th>총점</th> <th>평균</th>
	</tr>
	<%
		for(int i=0;i<list.size();i++)
		{
			name = list.get(i).getName();
			kor = list.get(i).getKor();
			eng = list.get(i).getEng();
			mat = list.get(i).getMat();
			tot = list.get(i).getTot();
			avg = list.get(i).getAvg();
			%>
	<tr>
		<td><%=name %></td>
		<td><%=kor %></td>
		<td><%=eng %></td>
		<td><%=mat %></td>
		<td><%=tot %></td>
		<td><%=avg %></td>
	</tr>
	<%
		}	%>
	
</table>

<a href = "input6.jsp"> 추가입력 </a>

</body>
</html>