<%@ page import="java.io.*,java.util.*" %>
<%    // 获取session创建时间    
Date createTime = new Date(session.getCreationTime());    
// 获取最后访问页面的时间    
Date lastAccessTime = new Date(session.getLastAccessedTime());     
String title = "Welcome Back to my website";    
Integer visitCount = new Integer(0);    
String visitCountKey = new String("visitCountKey");    
String userIDKey = new String("userIDKey");    
String userID = new String("ABCD");     
// 检测网页是否由新的访问用户    
if (session.isNew()){       
	title = "Welcome to my website";       
	session.setAttribute(userIDKey, userID);       
	session.setAttribute(visitCountKey,visitCount);    
	}     
visitCount = (Integer)session.getAttribute(visitCountKey);    
visitCount = visitCount + 1;    
userID = (String)session.getAttribute(userIDKey);    
session.setAttribute(visitCountKey,  visitCount); 
//session.setMaxInactiveInterval(1); 
%>
<html>

<head>
<title>Session Tracking</title>
</head>
<body>
<center>
<h1>Session Tracking</h1>
Session will be DELETE in 1 second!
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
   <td><% out.print(createTime); %></td>
</tr> 
<tr>
   <td>Time of Last Access</td>
   <td><% out.print(lastAccessTime); %></td>
</tr> 
<tr>
   <td>User ID</td>
   <td><% out.print(userID); %></td>
</tr> 
<tr>
   <td>Number of visits</td>
   <td><% out.print(visitCount); %></td>
</tr> 
</table> 
</body>
</html>