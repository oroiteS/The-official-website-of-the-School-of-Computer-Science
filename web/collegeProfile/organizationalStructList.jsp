<%--
*ClassName: organizationStructList
*Package: collegeProfile
*CreateTime: 2024/11/24-16:01
*Description: 组织机构列表
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上海电力大学计算机与技术学院</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet">
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
    <section id="search-result">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <img src="${pageContext.request.contextPath}/img/banner.jpg" alt="banner" width="1300" height="270">
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-md-2">
                    <ul>
                        <li>
                            <a class="column-name" title="学院简介" href="collegeProfileList.jsp">
                                <i class="bi"></i>
                                <span>学院简介</span>
                            </a>
                        </li>
                        <li>
                            <a class="column-name" title="学院领导" href="collegeLeaderList.jsp">
                                <i class="bi"></i>
                                <span>学院领导</span>
                            </a>
                        </li>
                        <li>
                            <a  class="column-name" title="组织机构" href="organizationalStructList.jsp">
                                <i class="bi"></i>
                                <span>组织机构</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-10">
                    <br>
                    <div style="margin:5px 10px 5px 0;">
                        <span style="font-size: 16px; font-weight: bold;">
                            <i style="font-size:14px;color:green" class="bi bi-chevron-right">&nbsp;&nbsp;</i>
                            <a href="organizationalStruct.jsp" style="color: black;text-decoration: none;">
                                计算机科学与技术学院组织结构
                            </a>
                        </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2024-04-18</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学院行政管理&nbsp;党政办主任▸&nbsp;诸葛琼&nbsp;组织员▸&nbsp;
                            聂坤&nbsp;教学秘书▸&nbsp;徐曼&nbsp;科研秘书▸&nbsp;陆佳&nbsp;学院教务▸&nbsp;毛志华&nbsp;
                            学院教务▸&nbsp;蒋仁志学院学工团队&nbsp;团委书记、辅导员 ▸&nbsp;卢珍&nbsp;辅导员▸&nbsp;任祥宝&nbsp;
                            辅导员▸&nbsp;马安奕&nbsp;辅导员▸&nbsp;周远航&nbsp;辅导员▸&nbsp;孙倩倩&nbsp;辅导员▸&nbsp;宋钰&nbsp;
                            辅导员▸&nbsp;张潇月
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
