<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center><a href="javascript:location.reload();">点击刷新页面</a></center><br/>


<%     
Integer hitsCount = (Integer)application.getAttribute("hitCounter");     
if( hitsCount ==null || hitsCount == 0 )
{        
	/* 第一次访问 */        
	out.println("Welcome to my website!");        
	hitsCount = 1;     
	}else{        
		/* 返回访问值 */        
		out.println("Welcome back to my website!");        
		hitsCount += 1;     
		}     
application.setAttribute("hitCounter", hitsCount); 
%>

<center>
<p>Total number of visits: <%= hitsCount %></p>
</center>

</body>
</html>