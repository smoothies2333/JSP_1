<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Format Date</title>
</head>
<body align="center">
<%    
Date dNow = new Date( );    
SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");    
out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
%>
<h2>
<%
/*
SimpleDateFormat函数语法：

G 年代标志符
y 年
M 月
d 日
h 时 在上午或下午 (1~12)
H 时 在一天中 (0~23)
m 分
s 秒
S 毫秒
E 星期
D 一年中的第几天
F 一月中第几个星期几
w 一年中第几个星期
W 一月中第几个星期
a 上午 / 下午 标记符 
k 时 在一天中 (1~24)
K 时 在上午或下午 (0~11)
z 时区
*/
SimpleDateFormat myFmt=new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
SimpleDateFormat myFmt1=new SimpleDateFormat("yy/MM/dd HH:mm"); 
SimpleDateFormat myFmt2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//等价于now.toLocaleString()
SimpleDateFormat myFmt3=new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒 E ");
SimpleDateFormat myFmt4=new SimpleDateFormat("一年中的第 D 天 一年中第w个星期 一月中第W个星期 在一天中k时 z时区");

Date now=new Date();
out.println(myFmt.format(now)+"<br/>");
out.println(myFmt1.format(now)+"<br/>");
out.println(myFmt2.format(now)+"<br/>");
out.println(myFmt3.format(now)+"<br/>");
out.println(myFmt4.format(now)+"<br/>");
out.println(now.toGMTString()+"<br/>");
out.println(now.toLocaleString()+"<br/>");
out.println(now.toString()+"<br/>"+"<br/>"+"<br/>");
%>
</h2>
</body>
</html>