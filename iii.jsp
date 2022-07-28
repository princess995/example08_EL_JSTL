<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

var files=["./image/1.jpg","./image/bg3.jpg","./image/2.jpg","./image/bg4.jpg","./image/3.jpg","./image/fruit.jpg","./image/fantasy.jpg"]
var img = new Array();
for(var i=0; i<files.length; i++)
	{
		img[i]=new Image();
		img[i].src=files[i];
	}

var po = 0;
function picture(obj)
{
	obj.src = img[po].src;
	po++;
	if(po>=files.length)
		{po=0;}				//po가 처음으로 돌아가게
}

</script>

</head>
<body>

<h2>사진</h2>
<img src="./image/watch.jpg" onclick="picture(this)">
</body>
</html>