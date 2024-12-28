<%--
*ClassName: resourceManagement
*Package: publicServices
*CreateTime: 2024/12/14-16:31
*Description: 资源下载管理
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>上海电力大学计算机科学与技术学院资源下载管理系统</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/publicServices/resourceManagement.css" rel="stylesheet">
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
                        <a href="${pageContext.request.contextPath}/publicService/resource.jsp">
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
            <a id="resourceRelease" href="#"><i class="icon">📰</i> 资源发布</a>
        </div>
        <div class="menu-item">
            <a id="resourceManagement" href="#"><i class="icon">⚙️</i> 资源管理</a>
        </div>
    </div>
    <div class="main-content">
        <div class="resourceRelease" >
            <form class="resource-form" action="../resourceServlet" method="post" enctype="multipart/form-data">
                <label for="title">标题:</label>
                <input type="text" id="title" name="title" required>
                <label for="publish-time">发布时间:</label>
                <input type="date" id="publish-time" name="publish-time" required>
                <label for="publish-kinds">资源种类</label>
                <select id="publish-kinds" name="publish-kinds" required>
                    <option value="student">学生相关</option>
                    <option value="teaching">教务相关</option>
                    <option value="research">科研相关</option>
                    <option value="basic">基础相关</option>
                </select>

                <div id="file-inputs-container">
                    <div class="file-input-group">
                        <input type="file" class="file-input" name="file[]" accept="*">
                    </div>
                </div>

                <input type="submit" id="news-submit" value="保存">
            </form>
        </div>

        <div class="resourceManagement" style="display: none">
            <div class="resource-filter">
                <label for="resource-type-filter">请选择资源种类</label>
                <select id="resource-type-filter">
                    <option value="student">学生相关</option>
                    <option value="teaching">教务相关</option>
                    <option value="research">科研相关</option>
                    <option value="basic">基础相关</option>
                </select>
            </div>
            <div id="resource-list">
                <!-- 这里将通过JavaScript动态添加内容 -->
            </div>
        </div>

    </div>
</main>
<script src="${pageContext.request.contextPath}/js/publicServices/resourceManagement.js"></script>
</body>
</html>
