<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input</title>
</head>
<body>
<form action="inp" method="get"> <!-- action="input.do"와 같이 확장자 패턴이 최종 목적지이다. 다만 우리의 경우에는 수업을 위해 우선 inp로 함.-->
<!-- get방식은 주소창에 목적지만 나오고 (http://localhost:8585/sample/inp) post방식은 (http://localhost:8585/sample/inp?id=qwq&name=~~~~)하고 그 내역이 다 노출된다.
 그래서 웹 브라우저는 대부분 post를 사용하나, 회원가입등은 보안에 더 유리하게 하기 때문에 get방식을 사용함. -->
아이디 : <input type="text" name="id"><br>
이름 : <input type="text" name="name"><br>
국어 : <input type="text" name="kor"><br>
<input type="submit">
</form>
</body>
</html>