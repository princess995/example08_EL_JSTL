<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function load() {
	var s = document.getElementById("sel")
	window.location=s.options[s.selectedIndex].value;
}

</script>
</head>
<body>

<select id="sel">
	<option value="http://naver.com">네이버</option>
	<option value="http://daum.net">다음</option>
	<option value="http://google.com">구글</option>
</select>
<button onclick="load()">웹사이트 접속</button>
</body>
</html>