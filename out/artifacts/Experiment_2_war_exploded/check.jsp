<%--
  Created by IntelliJ IDEA.
  User: 郭子杨
  Date: 2020/4/3
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check</title>
</head>
<jsp:useBean id="reg" scope="request" class="JB.Register"/>
<jsp:setProperty name="reg" property="*"/>
<body>
<%
    if(reg.isValidate()){
%>
<jsp:forward page="signup_success.jsp"/>
<%
} else {
%>
<jsp:forward page="signup.jsp"/>
<%
    }
%>
</body>
</html>