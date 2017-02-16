<%@ page import="java.io.*,java.util.*" %>
<%    // 获取session创建时间    
Date createTime2 = new Date(session.getCreationTime());    
// 获取最后访问页面的时间    
Date lastAccessTime2 = new Date(session.getLastAccessedTime());     
String title2 = "Welcome Back to my website";    
Integer visitCount2 = new Integer(0);    
String visitCountKey2 = new String("visitCountKey2");    
String userIDKey2 = new String("userIDKey2");    
String userID2 = new String("EFGH");     
// 检测网页是否由新的访问用户    
if (session.isNew()){       
	title2 = "Welcome to my website";       
	session.setAttribute(userIDKey2, userID2);       
	session.setAttribute(visitCountKey2,visitCount2);    
	}     
visitCount2 = (Integer)session.getAttribute(visitCountKey2);    
visitCount2 = visitCount2 + 1;    
userID2 = (String)session.getAttribute(userIDKey2);    
session.setAttribute(visitCountKey2,  visitCount2); 
//session.setMaxInactiveInterval(5); 
%>
<html>
<head>
<title>Session Tracking</title>
</head>
<body>
<center>
<h1>Session Tracking</h1>
Session will be DELETE in 5 second!
</center>
<table border="1" align="center"> 
<tr bgcolor="#949494">
   <th>Session info</th>
   <th>Value</th>
</tr> 
<tr>
   <td>id</td>
   <td><% out.print( session.getId()); %></td>
</tr> 
<tr>
   <td>Creation Time</td>
   <td><% out.print(createTime2); %></td>
</tr> 
<tr>
   <td>Time of Last Access</td>
   <td><% out.print(lastAccessTime2); %></td>
</tr> 
<tr>
   <td>User ID</td>
   <td><% out.print(userID2); %></td>
</tr> 
<tr>
   <td>Number of visits</td>
   <td><% out.print(visitCount2); %></td>
</tr> 
</table> 
</body>
</html>