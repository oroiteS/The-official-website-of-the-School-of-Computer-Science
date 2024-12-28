<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.File" %>
<%--
*ClassName: newsTrends
*Package: newsTrends
*CreateTime: 2024/11/24-13:40
*Description: 新闻动态界面
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上海电力大学计算机科学与技术学院新闻动态</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/newsTrends/newsTrends.css" rel="stylesheet">
</head>
<body>
<%
    //查看是否是管理员
    String identity=(String) session.getAttribute("identity");
    String pageParam=request.getParameter("page");
    int pageNumber = 1;
    if (pageParam != null && !pageParam.isEmpty()) {
        try {
            pageNumber = Integer.parseInt(pageParam);
        } catch (NumberFormatException e) {
            // 处理转换错误，设置为默认值或显示错误信息
            // 假设默认页码为 1
        }
    }
    //获取当前新闻的数量
    int totalNewsCount = Dao.newsTrends.newsDao.getNewsNumber();
    //计算总页数
    int totalPages = totalNewsCount / 12;
    if(totalPages*12<totalNewsCount){
        totalPages++;
    }
%>
<header id="header" style="position:fixed;top:0;left:0;width:100%;z-index:97;background:linear-gradient(to left, rgb(21, 153, 87), rgb(21, 87, 153));height:100px">
    <div class="header-container">
        <a href="${pageContext.request.contextPath}/homePage.jsp" class="logo d-flex align-items-center">
            <img src="${pageContext.request.contextPath}/img/logoNew_1.png" alt="logo">
            <img src="${pageContext.request.contextPath}/img/logoNew_2.png" alt="logo">
        </a>
        <nav id="navbar" class="navbar">
            <ul>
                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/homePage.jsp">
                        <span style="color:white;font-size:18px;font-weight:bolder">首页</span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">学院概况</span>
                    </a>
                    <ul>
                        <li> <a href="${pageContext.request.contextPath}/collegeProfile/collegeProfileList.jsp" target="_self">学院简介</a></li>
                        <li> <a href="${pageContext.request.contextPath}/collegeProfile/collegeLeaderList.jsp" target="_self">学院领导</a></li>
                        <li> <a href="${pageContext.request.contextPath}/collegeProfile/organizationalStructList.jsp" target="_self">组织机构</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">新闻动态</span>
                    </a>
                    <ul>
                        <%
                            if("administrator".equals(identity)) {
                                out.println("<li> <a href=\""+request.getContextPath()+"/newsTrends/newsManagement.jsp\" target=\"_self\">新闻管理</a></li>");
                            }
                        %>
                        <li> <a href="${pageContext.request.contextPath}/newsTrends/newsTrends.jsp" target="_self">新闻动态</a></li>
                        <li> <a href="${pageContext.request.contextPath}/newsTrends/academicNotice.jsp" target="_self">教务通知</a></li>
                        <li> <a href="${pageContext.request.contextPath}/newsTrends/noticeList.jsp" target="_self">通知公告</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">学科建设</span>
                    </a>
                    <ul>
                        <li> <a href="${pageContext.request.contextPath}/disciplineConstruction/teacherProfileList.jsp" target="_self">师资概况</a></li>
                        <li> <a href="${pageContext.request.contextPath}/disciplineConstruction/teacherDirectoryList.jsp" target="_self">教师名录</a></li>
                        <li> <a href="${pageContext.request.contextPath}/disciplineConstruction/researchAchievementList.jsp" target="_self">科研成果</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">本科教学</span>
                    </a>
                    <ul>
                        <li> <a href="${pageContext.request.contextPath}/undergraduateTeaching/professionalIntroductionList.jsp" target="_self">专业介绍</a></li>
                        <li> <a href="${pageContext.request.contextPath}/undergraduateTeaching/teachingAchievementList.jsp" target="_self">教学成果</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">研究生</span>
                    </a>
                    <ul>
                        <li> <a href="${pageContext.request.contextPath}/graduateStudent/studentEnrollmentList.jsp" target="_self">研究生招生</a></li>
                        <li> <a href="${pageContext.request.contextPath}/graduateStudent/professionalIntroductionList.jsp" target="_self">专业介绍</a></li>
                        <li> <a href="${pageContext.request.contextPath}/graduateStudent/rulesList.jsp" target="_self">规章制度</a></li>
                        <li> <a href="${pageContext.request.contextPath}/graduateStudent/tutorsDirectoryList.jsp" target="_self">导师名录</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">公共服务</span>
                    </a>
                    <ul>
                        <li> <a href="${pageContext.request.contextPath}/publicService/cardService.jsp" target="_self">一卡通服务</a></li>
                        <li> <a href="${pageContext.request.contextPath}/publicService/bookLending.jsp" target="_self">图书借阅</a></li>
                        <li> <a href="${pageContext.request.contextPath}/publicService/schoolBus.jsp" target="_self">校车时刻表</a></li>
                        <li> <a href="${pageContext.request.contextPath}/publicService/map.jsp" target="_self">校园地图</a></li>
                        <li> <a href="${pageContext.request.contextPath}/publicService/resource.jsp" target="_self">资源下载</a></li>
                        <li> <a href="${pageContext.request.contextPath}/publicService/employmentGuidance.jsp" target="_self">就业指导</a></li>
                        <li> <a href="${pageContext.request.contextPath}/publicService/consultation.jsp" target="_self">在线咨询</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>
<main>
    <div class="container">
        <%
            //获取文件夹
            String directoryPath="F:\\大学\\JavaEE\\code\\final_experiment\\web\\newsImg";
            File directory = new File(directoryPath);
            // 遍历目录中的文件
            File[] files = directory.listFiles();
            //获取新闻列表
            ArrayList<Object[]> newsList=Dao.newsTrends.newsDao.getNewsByPage(pageNumber);
            for(Object[] news_:newsList) {
                String hashTitle=news_[0].toString();
                String title=news_[1].toString();
                String createTime=news_[2].toString();
                String img="1";
                if(files!=null){
                    for(File file:files){
                        // 检查文件名是否以 hashTitle 开头
                        if (file.getName().startsWith(hashTitle)) {
                            img=file.getName();
                            break; // 找到后立即返回
                        }
                    }
                }
                String html="<div class=\"col col-lg-4 col-md-6 col-12\">" +
                                "<div class=\"card\">" +
                                    "<div class=\"card-img\">"+
                                        "<a href=\"news.jsp?id="+hashTitle+"\">"+
                                            "<img alt=\"\" src=\""+request.getContextPath()+"/newsImg/"+img+"\" width=\"360\" height=\"260\">"+
                                            "</img>"+
                                        "</a>"+
                                    "</div>"+
                                    "<div class=\"card-body\">" +
                                        "<h2 style=\"margin-top: 0;line-height: 25px;font-size: 14px;font-family: '宋体', serif;\">"+
                                            "<a href=\"news.jsp?id="+hashTitle+"\">"+
                                                title+"("+createTime+")"+
                                            "</a>"+
                                        "</h2>"+
                                    "</div>"+
                                "</div>"+
                            "</div>";
                out.println(html);
            }
        %>
    </div>
    <div>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item <% if(pageNumber == 1) { out.print("disabled"); } %>">
                    <a class="page-link" href="newsTrends.jsp?page=<%= pageNumber-1%>" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <%
                    if(totalPages<5){
                        for(int i=1;i<=totalPages;i++) {
                            out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"newsTrends.jsp?page=" + i + "\">" + i + "</a></li>");
                        }
                    }
                    else{
                        if(pageNumber<3){
                            for(int i=1;i<pageNumber+2;++i){
                                out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"newsTrends.jsp?page=" + i + "\">" + i + "</a></li>");
                            }
                        }
                        else{
                            out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"newsTrends.jsp?page=1\">1</a></li>");
                            out.print("<li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">...</a></li>");
                            for(int i=pageNumber-2;i<pageNumber+2&&i<totalPages;++i){
                                out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"newsTrends.jsp?page=" + i + "\">" + i + "</a></li>");
                            }
                            if(pageNumber+2<totalPages){
                                out.print("<li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">...</a></li>");
                                out.print("<li class=\"page-item\"><a class=\"page-link\" href=\"newsTrends.jsp?page="+totalPages+"\">"+totalPages+"</a></li>");
                            }
                        }
                    }
                %>
                <li class="page-item <% if(pageNumber == totalPages) { out.print("disabled"); } %>">
                    <a class="page-link" href="newsTrends.jsp?page=<%= pageNumber+1%>" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</main>
<footer id="footer" class="footer" style="height:160px">
    <div class="footer-content">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <p style="color:white;font-size:16px">©2022 上海电力大学计算机科学与技术学院 <br>联系电话：021-61655152</p>
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-11">
                            <p style="color:white;font-size:16px">地址:上海市浦东新区临港沪城环路1851号电计楼A区 <br> 邮政编码：201306</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-6">
                            <img src="${pageContext.request.contextPath}/img/qrcode.jpg" alt="学校公众号">
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-7">
                            <img src="${pageContext.request.contextPath}/img/xy.png" alt="博达而砺行，谨言以求新">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
