<%--
*ClassName: noticeManagement
*Package: newsTrends
*CreateTime: 2024/12/18-1:23
*Description: 通知管理，包括 教务通知 和 通知公告
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>上海电力大学计算机科学与技术学院通知管理系统</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/newsTrends/noticeManagement.css" rel="stylesheet">
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
                        <a href="${pageContext.request.contextPath}/newsTrends/noticeList.jsp">
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
<main>
    <div class="sidebar">
        <div class="menu-item" style="margin-top: 90px">
            <a id="noticeRelease" href="#"><i class="icon">📰</i> 通知发布</a>
        </div>
        <div class="menu-item">
            <a id="noticeManagement" href="#"><i class="icon">⚙️</i> 通知管理</a>
        </div>
    </div>
    <div class="main-content">
        <div class="noticeRelease" >
            <form class="notice-form" action="../noticeServlet" method="post" enctype="multipart/form-data">
                <label for="title">标题:</label>
                <input type="text" id="title" name="title" required>
                <label for="publish-time">发布时间:</label>
                <input type="date" id="publish-time" name="publish-time" required>
                <label for="publish-kinds">资源种类</label>
                <select id="publish-kinds" name="publish-kinds" required>
                    <option value="academic">教务通知</option>
                    <option value="notice">通知公告</option>
                </select>
                <label for="content">内容:</label>
                <textarea id="content" name="content" rows="10" required></textarea>
                <label for="file-inputs-container">附件:</label>
                <div id="file-inputs-container">
                    <div class="file-input-group">
                        <input type="file" class="file-input" name="file[]" accept="*">
                    </div>
                </div>

                <input type="submit" id="news-submit" value="保存">
            </form>
        </div>

        <div class="noticeManagement" style="display: none">
            <div class="notice-filter">
                <label for="notice-type-filter">请选择资源种类</label>
                <select id="notice-type-filter">
                    <option value="academic">教务通知</option>
                    <option value="notice">通知公告</option>
                </select>
            </div>
            <div id="notice-list">
                <!-- 这里将通过JavaScript动态添加内容 -->
            </div>
        </div>

    </div>
</main>
<script src="${pageContext.request.contextPath}/js/newsTrends/noticeManagement.js"></script>
</body>
</html>
