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
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>


</head>
<body>
<div class="container">
    <!-- 导航 -->
    <div class="nav">
        <ul>

            <li><a href="index.jsp">返回首页</a></li>
        </ul>
    </div>

    <!-- 主体内容 （登陆界面）-->
    <div class="main">
        <!-- 左侧信息栏 -->
        <div class="sideleft">
            <h1>新冠疫情专题页面管理员入口</h1>
            <%String name=request.getParameter("username");
                String password=request.getParameter("password");
                if(!(name==null||"".equals(name)||password==null||"".equals(password)))
                {
                    if("gzy".equals(name)&&"123".equals(password))
                    {
                        session.setAttribute("userid",name);
                        response.setHeader("refresh","3; url=welcome.jsp");
            %>
            <br>
            <h3><font color="green">恭喜用户<%=name %>登陆成功！三秒钟后跳转到欢迎页面！ </font></h3>
            <h3><font color="green">如果没有跳转，请点击<a href="welcome.jsp">这里</a>！</font>></h3>

            <%
            }
            else {
            %>
            用户名或密码错误！
            <%
                    }
                }
            %>



        </div>
        <!-- 右侧登陆界面 -->
        <div class="sideright">
            <div class="index">
                <div action="#" method="get">
                    <form action="login.jsp" name="myform" method="post">
                        <p class="headline">用户登录</p>
                        <p class="astyle">用户名：</p>
                        <input type="text" value="" name="username" id="accountName"/>
                        <p class="astyle">密码：</p>
                        <input type="password" value="" name="password" id="password" />
                        <input type="submit" value="登录" name="login"/>
                        <br>
                        <p class="bstyle"><input type="checkbox" name="rempas" />  记住密码</p>
                        <p class="cstyle"><a href="forgot-password.jsp">忘记密码</a></p>
                        <br><br>
                        <p class="cstyle">没有账号？<a href="signup.jsp">立即注册</a></p>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <br><br><br>
    <!-- 尾部 -->
    <div class="footer">
        <ul>
            <li><a href="#">郭子杨</a></li>
            <li><a href="#">08173042</a></li>
            <li><a href="#">计科17-06</a></li>
            <li><a href="#">江苏省徐州市铜山区中国矿业大学南湖校区</a></li>
        </ul>

    </div>

</div>


</body>
</html>