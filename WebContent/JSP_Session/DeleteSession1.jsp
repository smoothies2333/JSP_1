<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.removeAttribute("name");
session.invalidate();
out.print("<script>alert('用户即将退出，点击确定跳转Test2.jsp');window.location.href='Test2.jsp'</script>");
%>
</body>
</html>