<%--
*ClassName: informationSecurity
*Package: undergraduateTeaching.professionalIntroduction
*CreateTime: 2024/11/25-0:19
*Description: 专业介绍·信息安全
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
<header id="header"
        style="position:fixed;top:0;left:0;width:100%;z-index:97;background:linear-gradient(to left, rgb(21, 153, 87), rgb(21, 87, 153));height:100px">
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
                        <li><a href="${pageContext.request.contextPath}/collegeProfile/collegeProfileList.jsp"
                               target="_self">学院简介</a></li>
                        <li><a href="${pageContext.request.contextPath}/collegeProfile/collegeLeaderList.jsp"
                               target="_self">学院领导</a></li>
                        <li><a href="${pageContext.request.contextPath}/collegeProfile/organizationalStructList.jsp"
                               target="_self">组织机构</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">新闻动态</span>
                    </a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/newsTrends/newsTrends.jsp"
                               target="_self">新闻动态</a></li>
                        <li> <a href="${pageContext.request.contextPath}/newsTrends/academicNotice.jsp" target="_self">教务通知</a></li>
                        <li><a href="${pageContext.request.contextPath}/newsTrends/noticeList.jsp"
                               target="_self">通知公告</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">学科建设</span>
                    </a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/disciplineConstruction/teacherProfileList.jsp"
                               target="_self">师资概况</a></li>
                        <li><a href="${pageContext.request.contextPath}/disciplineConstruction/teacherDirectoryList.jsp"
                               target="_self">教师名录</a></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/disciplineConstruction/researchAchievementList.jsp"
                               target="_self">科研成果</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">本科教学</span>
                    </a>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/undergraduateTeaching/professionalIntroductionList.jsp"
                               target="_self">专业介绍</a></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/undergraduateTeaching/teachingAchievementList.jsp"
                               target="_self">教学成果</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">研究生</span>
                    </a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/graduateStudent/studentEnrollmentList.jsp"
                               target="_self">研究生招生</a></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/graduateStudent/professionalIntroductionList.jsp"
                               target="_self">专业介绍</a></li>
                        <li><a href="${pageContext.request.contextPath}/graduateStudent/rulesList.jsp" target="_self">规章制度</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/graduateStudent/tutorsDirectoryList.jsp"
                               target="_self">导师名录</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">公共服务</span>
                    </a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/publicService/cardService.jsp" target="_self">一卡通服务</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/publicService/bookLending.jsp" target="_self">图书借阅</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/publicService/schoolBus.jsp" target="_self">校车时刻表</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/publicService/map.jsp"
                               target="_self">校园地图</a></li>
                        <li><a href="${pageContext.request.contextPath}/publicService/resource.jsp"
                               target="_self">资源下载</a></li>
                        <li><a href="${pageContext.request.contextPath}/publicService/employmentGuidance.jsp"
                               target="_self">就业指导</a></li>
                        <li><a href="${pageContext.request.contextPath}/publicService/consultation.jsp" target="_self">在线咨询</a>
                        </li>
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
                <div class="col-lg-12">
                    <div style="margin-top:30px">
                        <h4 style="margin-bottom: 10px;text-align: center;font-size: 22px;font-family: '微软雅黑',serif;">
                            信息安全专业介绍
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2022-01-05
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;background-color:#ffffff;line-height:18px;">
                                    <strong><span style="font-size:16px;line-height:24px;color:black;"><br></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;background-color:#ffffff;line-height:18px;">
                                    <strong><span style="font-size:16px;line-height:24px;color:black;">1.</span></strong>
                                    <strong><span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        培养目标
                                    </span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;text-indent:32px;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        本专业培养掌握该领域基本理论、基本技术和应用知识，具备科学研究、技术开发和应用服务工作能力的信息
                                        安全科技人才，能够从事信息安全、信息科学、信息技术及其他相关领域的信息安全研究、技术开发和应用服务
                                        等工作，适应电力、政府机关、科研、企事业单位等多方面需求的高级应用型专门人才。
                                    </span>
                                </p>
                                <p style="text-align:center">
                                    <img data-layer="photo" src="${pageContext.request.contextPath}/img/informationSecurity.jpg"
                                          style="width:439px;height:563px;" alt="信息安全">
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;background-color:#ffffff;line-height:18px;">
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;color:black;">2.</span>
                                    </strong>
                                    <strong><span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        专业特色
                                    </span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;text-indent:32px;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        以电力信息安全为主线，以电力应用为背景，系统地研究电力系统和电力网络中的信息安全问题，侧重培养与
                                        锻炼学生在电力行业中从事信息安全技术研究、系统设计、产品开发、产品策略制定与管理、以及基础设施运行
                                        维护的能力。培养了解电力行业应用需求，能适应社会及电力行业需求的应用型信息安全技术人才。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;color:black;">3.</span>
                                    </strong>
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                            主干课程
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;text-indent:32px;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        离散数学、数据结构、计算机组成原理、汇编语言、高级程序设计
                                    </span>
                                    <span style="font-size:16px;line-height:24px;color:black;">(C++)</span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        、操作系统原理、应用密码学、计算机系统安全、计算机网络安全、网络安全程序设计、网络攻击与防御、信息隐藏。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <strong><span style="font-size:16px;line-height:24px;color:black;">4.</span></strong>
                                    <strong><span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        毕业生就业</span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;text-indent:32px;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        本专业毕业生主要在信息安全科研院所、政府机构、银行、电力、电信、金融等各企事业单位从事计算机网络
                                        信息安全的科学研究、安全系统设计、系统防护、系统管理与维护等工作。本专业
                                    </span>
                                    <span style="font-size:16px;line-height:24px;color:black;">2017</span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        届毕业生就业率达
                                    </span>
                                    <span style="font-size:16px;line-height:24px;color:black;">100%</span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">。</span>
                                </p>
                                <p style="text-align:center">
                                    <br>
                                </p>
                            </div>
                        </div>

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
                    <p style="color:white;font-size:16px">©2022 上海电力大学计算机科学与技术学院 <br>联系电话：021-61655152
                    </p>
                </div>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-11">
                            <p style="color:white;font-size:16px">地址:上海市浦东新区临港沪城环路1851号电计楼A区 <br>
                                邮政编码：201306</p>
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


