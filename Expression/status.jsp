<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.ArrayList"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>突发情况！！！</title>
</head>
<body>
<jsp:useBean id="status" class="com.sccc.Status" scope="session" />
<h1>这不是演习!!这不是演习!!</h1>
<form action="showInfo.jsp" mothod="post">
	<%
		String test=status.getZhuangTai().get(0);
		ArrayList<String> xuanxiang=status.getTiMu().get(test);
		
		out.println("<h1>"+test+"应该怎么回答？|想清楚！</h1>");
		
		for(int i = 0;i<4;i++){
			String neiRong = xuanxiang.get(i);
			String num = String.valueOf(i);
			out.println("<p><input type='radio' name='phone' value='+"
			+num+"'>"+neiRong+"</input></p>");
			
		}
	%>
	<button>提交</button>
</form>
</body>
</html>