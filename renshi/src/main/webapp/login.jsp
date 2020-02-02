<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/30 0030
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="css/login.css" type="text/css">
    <script src="js/jquery-1.11.1.min.js"></script>
</head>
<body>
<div class="login-page">
    <div class="form">
        <input type="text" placeholder="用户名" name="username" required="required"/>
        <input type="password" placeholder="密码" name="password" required="required"/>
        <p><input type="checkbox" name="rememberMe" />记住我</p>
        <button onclick="login()">登录</button>
    </div>
</div>
</body>
<script th:inline="javascript">
    function login() {
        var username = $("input[name='username']").val();
        var password = $("input[name='password']").val();
        var rememberMe =$("input[name='rememberMe']").is(':checked');
        $.ajax({
            type: "post",
            url: "/login.action",
            data: {"username": username,"password": password,"rememberMe": rememberMe},
            dataType: "json",
            success: function (r) {
                if (r.code == "0") {
                    location.href = '/index.action';
                } else {
                    alert(r.msg);
                }
            }
        });
    }
</script>
</html>
