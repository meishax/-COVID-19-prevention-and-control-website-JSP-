<%--
  Created by IntelliJ IDEA.
  User: 郭子杨
  Date: 2020/4/3
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <html>
    <head>

        <title>注销</title>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    </head>
<body class="templatemo-bg-gray">

<div class="col-md-12">
    <form class="form-horizontal templatemo-forgot-password-form templatemo-container">
        <%session.invalidate();
            response.setHeader("refresh","2;url=index.jsp");

        %>
        <h2>您已退出本系统，2秒钟后跳转到首页！</h2>

    </form>
</div>
</body>
</html>