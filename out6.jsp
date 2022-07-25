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
int kor, eng, mat, tot;
double avg;
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
	</tr>

	
</table>

</body>
</html>