<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page Redirection</title>
</head>
<body>
<center>
<h1>Page Redirection</h1>
</center>
<%    

// 重定向到新地址   
//String site = new String("http://www.baidu.com");    
response.setStatus(response.SC_MOVED_TEMPORARILY);    
response.setHeader("Location", "http://www.baidu.com");  
%>
</body>
</html>