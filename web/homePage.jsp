<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.List" %>
<%--
*ClassName: homePage
*Package: None(web)
*CreateTime: 2024/11/18-12:12
*Description: 首页
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>计算机科学与技术学院</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/homePage.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet">
    <style>
        a{
            text-decoration: none;
            color: black;
        }
        #prevBtn,#nextBtn {
            background: linear-gradient(to right, rgb(21, 87, 152), #159858);
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            box-sizing: border-box;
            width: 279rpx;
            height: 80rpx;
            padding: 24rpx;
            overflow: hidden;
            font-weight: 700;
            font-size: 26rpx;
            text-align: center;
            border-radius: 65rpx;
        }
        
        #prevBtn::after,#nextBtn::after {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-image: radial-gradient(circle, #ccc 10%, transparent 10.1%);
            transform: scale(10);
            opacity: 0;
            transition: all 0.45s;
            content: '';
        }

        #prevBtn:active::after,#nextBtn:active::after {
            transform: scale(0);
            opacity: 0.5;
            transition: 0s;
        }
        .carousel-news-container{
            display: flex;
            overflow: hidden;
            width: 100%;
            height: 360px;
        }
        .carousel-news-item{
            display: flex;
            align-content: center;
            justify-content: center;
            min-width: 100%;
            transition: transform 0.5s ease-in-out; /* 平滑移动效果 */
        }
        .card-news{
            margin: 5px 10px;
            width: 360px;
            height: 360px;
        }
        #posts #collegeNews {
            width: 1300px !important;
            margin: 0 auto !important;
        }

        .category-section .container {
            width: 1300px !important;
            margin: 0 auto !important;
            padding: 0 !important;
        }

        .category-section .row {
            margin: 0 !important;
        }

        .category-section .col-md-6 {
            padding: 0 10px !important;
        }
    </style>
</head>
<body>
<header id="header" style="position:fixed;top:0;left:0;width:100%;z-index:97;background:linear-gradient(to left, rgb(21, 153, 87), rgb(21, 87, 153));height:100px">
    <div class="header-container">
        <a href="${pageContext.request.contextPath}/homePage.jsp" class="logo d-flex align-items-center">
            <img src="${pageContext.request.contextPath}/img/logoNew_1.png" alt="logo">
            <img src="${pageContext.request.contextPath}/img/logoNew_2.png" alt="logo">
        </a>
        <nav id="navbar" class="navbar">
            <ul>
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
    <div id="main">
        <div id="carousel" >
            <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active" style="object-fit: fill;">
                        <img src="img/carousel1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item" style="object-fit: fill;">
                        <img src="img/carousel2.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item" style="object-fit: fill;">
                        <img src="img/carousel3.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <section id="posts" class="posts">
            <div id="collegeNews" style="width: 1300px; margin: 0 auto;">
                <div class="section-header" style="border-bottom: 1px solid #24936E;">
                    <h2 style="line-height:40px; background: linear-gradient(to right, rgb(52, 143, 80), rgb(86, 180, 211));font-size:large;font-weight:bold;color:white;border-radius:3px">&nbsp;&nbsp;&nbsp;学院新闻&nbsp;&nbsp;&nbsp;</h2>
                    <button id="prevBtn">prev</button>
                    <button id="nextBtn">next</button>
                    <div>
                        <a href="${pageContext.request.contextPath}/newsTrends/newsTrends.jsp">
                            <i class="bi bi-three-dots" style="font-size:24px;color:green">...</i>
                        </a>
                    </div>
                </div>
                <div class="carousel-news-container" style="margin-top: -25px;">
                    <%
                        //获取文件夹
                        String directoryPath="F:\\大学\\JavaEE\\code\\final_experiment\\web\\newsImg";
                        File directory = new File(directoryPath);
                        // 遍历目录中的文件
                        File[] files = directory.listFiles();
                        //获取新闻列表
                        ArrayList<Object[]> newsList=Dao.newsTrends.newsDao.getNewsByPage(1);
                        for(int x=0;x<4;++x){
                            StringBuilder html=new StringBuilder("<div class=\"carousel-news-item\">");
                            for(int i=x*3;i<(x+1)*3;++i){
                                Object[] news_=newsList.get(i);
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
                                html.append("<div class=\"card-news\">" + "<div class=\"card-img\">" + "<a href=\"")
                                        .append(request.getContextPath()).append("/newsTrends/news.jsp?id=")
                                        .append(hashTitle).append("\">").append("<img alt=\"\" src=\"")
                                        .append(request.getContextPath()).append("/newsImg/").append(img)
                                        .append("\" width=\"360\" height=\"260\">").append("</img>").append("</a>")
                                        .append("</div>").append("<div class=\"card-body\">")
                                        .append("<h2 style=\"margin-top: 0;line-height: 25px;font-size: 14px;" +
                                                "font-family: '宋体', serif;\">").append("<a href=\"")
                                        .append(request.getContextPath()).append("/newsTrends/news.jsp?id=")
                                        .append(hashTitle).append("\">").append(title).append("(")
                                        .append(createTime).append(")").append("</a>").append("</h2>")
                                        .append("</div>").append("</div>");
                            }
                            html.append("</div>");
                            out.write(html.toString());
                        }
                    %>

                </div>
            </div>
        </section>
        <section class="category-section">
            <div class="container" style="max-width: 1300px; padding: 0;">
                <div class="row" style="margin: 0;">
                    <div class="col-md-6" style="padding: 0 10px;">
                        <div class="card">
                            <div class="card-header" style="background: linear-gradient(to right, rgb(52, 143, 80), white);font-size:large;font-weight:bold;color:white">
                                教务通知
                                <span style="float:right;font-size:13px;color:white">
                                    <a href="${pageContext.request.contextPath}/newsTrends/academicNotice.jsp">
                                        <i class="bi bi-three-dots" style="font-size:24px;color:green"></i>
                                    </a>
                                </span>
                            </div>
                            <%
                                List<Object[]> academicNotices = Dao.newsTrends.noticeDao.getNoticesByType("academic");
                                // 只显示前7条记录
                                int academicCount = Math.min(academicNotices.size(), 7);
                                for(int i = 0; i < academicCount; i++) {
                                    Object[] notice = academicNotices.get(i);
                                    String title = notice[0].toString();
                                    String publishTime = notice[1].toString();
                                    String noticeId = hash.hash.getHash(title + publishTime + "academic");
                            %>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <div class="zyContainer">
                                        <div class="left-part">
                                            <a href="${pageContext.request.contextPath}/newsTrends/notice.jsp?id=<%= noticeId %>&type=academic">
                                                <i class="bi bi-arrow-right-short" style="color:forestgreen"></i><%= title %>
                                            </a>
                                        </div>
                                        <div class="right-part">
                                            <span style="float:right;padding-right:0;color:gray;"><%= publishTime %></span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <% } %>
                        </div>
                    </div>
                    <div class="col-md-6" style="padding: 0 10px;">
                        <div class="card">
                            <div class="card-header" style="background: linear-gradient(to right, rgb(52, 143, 80), white);font-size:large;font-weight:bold;color:white">
                                通知公告
                                <span style="float:right;font-size:13px;color:white">
                                    <a href="${pageContext.request.contextPath}/newsTrends/noticeList.jsp">
                                        <i class="bi bi-three-dots" style="font-size:24px;color:green"></i>
                                    </a>
                                </span>
                            </div>
                            <%
                                List<Object[]> notices = Dao.newsTrends.noticeDao.getNoticesByType("notice");
                                // 只显示前7条记录
                                int noticeCount = Math.min(notices.size(), 7);
                                for(int i = 0; i < noticeCount; i++) {
                                    Object[] notice = notices.get(i);
                                    String title = notice[0].toString();
                                    String publishTime = notice[1].toString();
                                    String noticeId = hash.hash.getHash(title + publishTime + "notice");
                            %>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <div class="zyContainer">
                                        <div class="left-part">
                                            <a href="${pageContext.request.contextPath}/newsTrends/notice.jsp?id=<%= noticeId %>&type=notice">
                                                <i class="bi bi-arrow-right-short" style="color:forestgreen"></i><%= title %>
                                            </a>
                                        </div>
                                        <div class="right-part">
                                            <span style="float:right;padding-right:0;color:gray;"><%= publishTime %></span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
                            <img src="img/qrcode.jpg" alt="学校公众号">
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-7">
                            <img src="img/xy.png" alt="博达而砺行，谨言以求新">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<script>
    const box=document.querySelectorAll('.carousel-news-item');
    let positionX=0;
    //移动次数
    let prevCount=0;
    let nextCount=3;
    function moveBox(x){
        positionX+=x;
        box.forEach(item=>{
            item.style.transform='translate('+positionX+'px,0px)';
        })
        //box.style.transform='translate('+positionX+'px,0px)';
    }
    document.getElementById('prevBtn').addEventListener('click',function(){
        if(prevCount===0){
            //document.getElementById('prevBtn').disabled=true;
            nextCount=0;
            prevCount=3;
            moveBox(-3960);
        }else {
            prevCount--;nextCount++;
            moveBox(1320);
            //document.getElementById('nextBtn').disabled=false;
        }

    });
    document.getElementById('nextBtn').addEventListener('click',function(){
        if(nextCount===0){
            //document.getElementById('nextBtn').disabled=true;
            prevCount=0;nextCount=3;
            moveBox(3960);
        }else{
            nextCount--;prevCount++;
            moveBox(-1320);
            //document.getElementById('prevBtn').disabled=false;
        }

    });
</script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
</body>
</html>