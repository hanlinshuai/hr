<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2020/1/30
Time: 18:59
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/frontend/static/css/bt3.css"/>
    <link rel="stylesheet" href="/frontend/static/css/app.css"/>
    <meta content="user-scalable=no,width=device-width, initial-scale=1" name="viewport">
    <link rel="stylesheet" href="/frontend/static/css/page-fast-news-60c1b0fb04288316f8b14bbbcc409bff.css"/>
    <link rel="stylesheet" href="/frontend/static/css/application-febb10a4ab803df13138ef8cf968c276.css"/>
    <link rel="stylesheet" href="/frontend/static/css/style.css"/>
    <script type="text/javascript" src="/frontend/static/js/jquery-1.10.2.min.js"></script>
    <title></title>
</head>
<body style="background-color: #fff;" class=" pace-done">
<header class="common-header J_commonHeaderWrapper" data-stat-module="dingbudaohang">
    <div class="container">
        <a class="logo" href="#">
            <img src="/frontend/static/picture/logo.png"/>
        </a>
        <div class="right-col J_rightNavWrapper">
            <ul class="sub-nav">
                <li class="search-item"><a href="javascript:void(0)" data-stat-hover="sousuo">
                    <img src="/frontend/static/picture/xiaoxi.png" style="width: 15px;"/>消息</a>
                </li>
                <li class="search-item"><a href="javascript:void(0)" data-stat-hover="sousuo">
                    <img src="/frontend/static/picture/jianli.png" style="width: 15px;"/> 简历</a>
                </li>
                <c:if test="${username!=null}">
                    <li class="search-item"><a href="javascript:void(0)" data-stat-hover="sousuo">
                        <img src="/frontend/static/picture/user.png" style="width: 15px;"/> ${username}</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</header>


<div class="container paperCut" style="margin-top: 35px;">
    <div class="row">
        <div class="col-md-3">
            <div class="box">
                <h3 class="clearfix" style="text-align: center;background-color: #f5f5f5;">
                    <span style="color: #008DF2;">共找到115个岗位</span>
                </h3>
            </div>
            <div class="box" style="margin-top: 25px;">
                <h3>公告类型一</h3>
                <div class="content" style="margin-top: 20px;padding: 10px;">
                    <span class="biaoq">这里是公告内容</span>
                </div>
            </div>
            <div class="box">
                <h3 class="clearfix">公告类型二</h3>
                <div class="content paper-link">
                    <span class="biaoq">这里是公告类型二</span>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="box" style="width: 100%;border: 0px;height: 50px;">
                <div style="width: 80%;float: left;height: 33px;"><input
                        style=" width:100%;border: 2px #008DF2  solid;padding: 10px;" placeholder=" 搜索你感兴趣的人才"/></div>
                <div style="width: 20%;background-color:#008DF2 ;float: left;height:43px;text-align:center;"><span
                        style="width:100%;line-height:43px;color: #fff;font-size: 18px;">搜索</span></div>
            </div>

            <div class="box" style="margin-top: 20px;">
                <div class="content">
                    <dl class="clearfix">
                        <dt class="clearfix pull-left">
                            <p class="paper-image">
                                <span class="txb">java开发</span>
                                <span><img src="/frontend/static/picture/gongsi.png"/>阿里巴巴</span>
                                <span><img src="/frontend/static/picture/address.png"/>光谷大道27号</span>
                            </p>
                        </dt>
                        <dd class="pull-right">
                            <span style="float: right;margin-right: 10px;">投递简历</span>
                        </dd>
                        <div clas="bottom clearfix" style="margin-top: 60px;padding: 10px;">
                            <p class="pull-left paper-desc">
                                早两年在QQ音乐团队写代码，目前在阿里巴巴做一个萌芽中的项目。主要的时间在写 iOS，也写过大半年时间的 Android 和 Cocos。除了 Objective-C
                                用的还可以以外，个人比较拿得出手的是 Java 和 S..
                            </p>
                        </div>
                        <div style="padding: 10px;margin-top: 40px;">
                            <span class="jns">18k-20k</span>
                            <span class="jns">3-5年</span>
                            <span class="jns">本科</span>
                        </div>
                        <dd class="pull-right">
                            <span style="float: right;margin-right: 10px;">发布时间：2020-02-29 12:00</span>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
