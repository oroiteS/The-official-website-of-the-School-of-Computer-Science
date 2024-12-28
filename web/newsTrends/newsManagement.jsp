<%--
*ClassName: newsManagement
*Package: newsTrends
*CreateTime: 2024/11/28-13:23
*Description: 新闻管理界面
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>上海电力大学计算机科学与技术学院新闻管理系统</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/newsTrends/newsManagement.css" rel="stylesheet">
</head>
<body>
<header id="header" style="position:fixed;top:0;left:0;width:100%;z-index:97;background:linear-gradient(to left, rgb(21, 153, 87), rgb(21, 87, 153));height:80px">
    <div class="header-container">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/img/logoNew_1.png" alt="logo">
            <img src="${pageContext.request.contextPath}/img/logoNew_2.png" alt="logo">
            <nav id="navbar" class="navbar">
                <ul>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/homePage.jsp">
                            <span style="color:white;font-size:18px;font-weight:bolder">首页</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/newsTrends/newsTrends.jsp">
                            <span style="color:white;font-size:18px;font-weight:bolder">退出</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="user-info">
            <%
                String uId = (String) session.getAttribute("userId");
                if (uId != null) {
                    out.println(session.getAttribute("userId"));
                }
            %>
        </div>
    </div>
</header>
<div class="sidebar">
    <div class="menu-item" style="margin-top: 90px">
        <a id="newsRelease" href="#"><i class="icon">📰</i> 新闻发布</a>
    </div>
    <div class="menu-item">
        <a id="newsDraft" href="#"><i class="icon">📝</i> 新闻草稿</a>
    </div>
    <div class="menu-item">
        <a id="newsManagement" href="#"><i class="icon">⚙️</i> 新闻管理</a>
    </div>
</div>
<div class="main-content">
    <div class="newsRelease" >
        <form class="news-form" action="" method="post" enctype="application/x-www-form-urlencoded">
            <label for="title">标题:</label>
            <input type="text" id="title" name="title" required>
            <label for="publish-time">发布时间:</label>
            <input type="date" id="publish-time" name="publish-time" required>
            <label for="author">供稿人:</label>
            <input type="text" id="author" name="author" required>
            <label for="content">内容:</label>
            <textarea id="content" name="content" rows="10" required></textarea>
            <button type="button" class="insert-image">插入图片</button>
            <input type="submit" id="news-submit" value="保存">
        </form>
    </div>
    <div class="newsDraft" style="display: none">
    </div>
    <div class="newsManagement" style="display: none">
    </div>
    <form action="../imageUploadServlet" method="post" enctype="multipart/form-data">
        <!-- 隐藏的file用于文件上传 -->
        <input type="hidden" id="none-title" name="title">
        <input type="file" id="image-input" name="image" accept="image/*" style="display: none;">
        <input type="submit" id="image-submit" value="提交" style="display: none;">
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/newsTrends/newsManagement.js"></script>
</body>
</html>
