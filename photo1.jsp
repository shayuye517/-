<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/3/30
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>我的消息</title>
    <link rel="stylesheet" href="personal.css">
    <style>
        .highlight {
            background-color: yellow;
        }
        tbody{
            color:white;
        }
    </style>
</head>
<body>
<div class=personal-box>
    <!--个人中心顶部盒子 -->
    <div class="Personal-top">
        <div class="Personal-avatar">头像</div>
        <div class="Personal-backgroundpicture">背景图片</div>
    </div>
    <!-- 个人中心主要盒子 -->
    <div class="Personal-main">
        <!-- 索引界面(左边盒子) -->
        <div class="aside">
            <div class="item"><button onclick="window.location='insertshow'">个人信息</button></div>
            <div class="item"><button onclick="window.location='heritage1'">非遗项目</button></div>
            <div class="item"><button onclick="window.location='photo1'">我的商城</button></div>
            <div class="item"><button onclick="window.location='inf1'">我的消息</button></div>
            <div class="item">退出</div>
        </div>
        <div class="content">
            <!-- 添加一个滚动容器 -->
            <div class="scrollable-table-container">
                <table class="scrollable-table">
                    <thead>
                    <tr>
                        <th>链接</th>
                        <th>商品名称</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- 循环遍历消息列表（假设从后端获取并填充） -->
                    <c:forEach var="message" items="${userInfo}">
                        <tr>
                            <td>${message.url}</td>
                            <td>${message.name}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<!-- ... 页面底部 ... -->

<!-- CSS样式添加滚动效果 -->
<style>
    .scrollable-table-container {
        height: 300px; /* 可自定义高度 */
        overflow-y: auto; /* 水平滚动条 */
        width: 100%;
    }

    .scrollable-table {
        width: 100%;
        border-collapse: collapse;
    }

    .scrollable-table th,
    .scrollable-table td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    .scrollable-table thead tr {
        background-color: #f2f2f2;
        font-weight: bold;
    }
</style>

</body>
</html>
