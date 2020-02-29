<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/30 0030
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>智能招聘</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--可无视-->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!--主要样式-->
    <link type="text/css" href="/css/style.css" rel="stylesheet"/>
    <script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
    <%--封装ajax--%>
    <script type="text/javascript" src="/js/mAjax.js"></script>
    <script>
        function loginClick () {
            var username = $("input[name='username']").val();
            var password = $("input[name='password']").val();
            var rememberMe =$("input[name='rememberMe']").is(':checked');
            $.mAjax({
                    url: '/login.action',
                    type: 'post',
                    dataType:'JSON',
                    mobj:".inset",
                    data: {"username": username,"password": password,"rememberMe": rememberMe},
                    success: function(data) {
                        console.info(data)
                        if (data.code == "0") {
                            location.href = '/index.action';
                        } else {
                            alert(data.msg);
                        }
                    }
                }
            );
            return false;
        }
    </script>
</head>
<body>

<div class="container" align="center">
    <div class="col-md-6" style="margin-top: 20%;">
        <div class="inset">
            <form name="login" id="login" method="post">
                <div>
                    <h2>智能招聘</h2>
                    <span style="text-align: left;text-indent: 0.4em;"><label>用户名</label></span>
                    <span><input type="text" name="username" class="textbox"></span>
                </div>
                <div>
                    <span style="text-align: left;text-indent: 0.4em;"><label>密码</label></span>
                    <span><input name="password" type="password" class="password"></span>
                </div>
                <div class="sign">
                    <input type="reset" class="submit" value="重置"/>
                    <button onclick="return loginClick()" class="submit">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
