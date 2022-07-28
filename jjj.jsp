<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

var files=[
	"./image/1.jpg",
	"./image/1.png",
	"./image/2.jpg",
	"./image/2.png",
	"./image/3.jpg",
	"./image/3.png",
	"./image/4.jpg",
	"./image/4.png",
	"./image/acoffee.jpg",
	"./image/apple.jpg",
	"./image/back.png",
	"./image/bg.png",
	"./image/bg0.jpg",
	"./image/bg1.png",
	"./image/bg1.jpg",
	"./image/bg2.jpg",
	"./image/bg2.png",
	"./image/bg3.jpg",
	"./image/bg4.jpg",
	"./image/bg-note.jpg"
	]
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
		{po=0;}
}


</script>

</head>
<body>
<img src="./image/watch.jpg" onclick="picture(this)">
</body>
</html>