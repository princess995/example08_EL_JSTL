<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function Bank(name, code, balance)
{	//property(생성자) 생성
	this.name = name;
	this.code = code;
	this.balance = balance;
	//
	this.inqury = function(){return this.balance}; //조회기능 so 값 돌려줘야
	this.input = function(money){this.balance += money};	//여기 += -= 붙여써야됨
	this.out = function(money){this.balance -= money};
}

</script>
</head>
<body>

<script type="text/javascript">

var bb = new Bank("고길동", "110-449", 100000);
document.write("이름"+bb.name+"<br>");
document.write("계좌번호"+bb.code+"<br>");
document.write("잔액"+bb.balance+"<br>");

//입금
bb.input(50000);
//잔액
document.write("잔액 : "+bb.inqury()+"<br>");
//출금
bb.out(30000);
//잔액
document.write("잔액 : "+bb.inqury()+"<br>");
</script>

</body>
</html>