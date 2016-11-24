<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.sccc.BoyFriend"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>接受审判吧骚年</title>
</head>
<body>
<%
	BoyFriend bf = (BoyFriend)session.getAttribute("myBoyFriend");
	String phone = request.getParameter("phone");
	
	int shengQi = bf.getShengQi();
	int ai = bf.getAi();
	
	if(phone.equals("0")){
		shengQi = shengQi+10;	
	}else if(phone.equals("1")){
		shengQi = shengQi+30;
	}else if(phone.equals("2")){
	ai = ai+20;
}else{
	ai=ai+10;
	shengQi=shengQi+10;
}
	bf.setShengQi(shengQi);
	bf.setAi(ai);
	
	if(bf.getShengQi()>20){
		out.print("<h1>恭喜你，你已经go die了</h1>");
	}else{
		out.print("<h1>少年你要小心，女朋友的怒气已经达到"+bf.getShengQi()+"</h1>");
		if(bf.getAi()>30){
			out.print("<h1>哎呦，不错哦！女朋友蛮喜欢你的哦~<h1>");
		}
		out.print("<p><a href='status.jsp'>继续测试！</a></p>");
	}
	
	if(bf.getAi()>100){
		out.print("<h1>恭喜你们，可以步入婚礼殿堂~</h1>");
	}
%>
</body>
</html>