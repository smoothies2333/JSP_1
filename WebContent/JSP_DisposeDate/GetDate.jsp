<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Current Date & Time</title>
</head>
<body>
<center>
<h1>Display Current Date & Time</h1>
</center>
<%    
Date date = new Date();    
out.print( "<h2 align=\"center\">" + "用toString————"+date.toString()+ "</h2>");
out.print( "<h2 align=\"center\">" + "不用toString，直接用date————"+date+ "</h2>");
%>


</body>
</html>