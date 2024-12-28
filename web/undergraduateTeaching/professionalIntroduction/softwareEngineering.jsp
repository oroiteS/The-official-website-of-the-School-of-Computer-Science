<%--
*ClassName: softwareEngineering
*Package: undergraduateTeaching.professionalIntroduction
*CreateTime: 2024/11/25-0:17
*Description: 专业介绍·软件工程
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
                            软件工程专业介绍
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2023-01-04
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;
                                font-size:12px;background-color:#ffffff;line-height:27px;margin-top:auto;margin-bottom:auto;">
                                    <strong><span style="font-size:16px;font-family:宋体,serif;color:black;">
                                        软件工程专业介绍
                                    </span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                            1
                                        </span>
                                    </strong>
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                            、培养目标
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;text-indent:28px;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        以国民经济和社会信息化需求为导向，面向软件产业，以构思、设计、实施和运行实际工程为工程教育背景环境，
                                        培养掌握扎实的计算机基础理论知识；能综合运用专业知识分析和解决实际软件工程问题，具有软件产业实践经验，
                                        适应现代化工程团队、新产品和新系统开发需求；具有较强的创新创业能力、较强的工程实践能力和团队协作能力、
                                        德智体全面发展的有国际竞争力的高层次、应用型、复合型软件工程技术。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;text-indent:32px;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        本专业毕业的学生，既可从事软件工程基础理论研究、大中型软件系统开发、软件工程项目管理、新方法和
                                        新技术开发等软件工程领域的科技工作，也可承担软件企业管理、软件开发技术管理及软件企业市场经营等工作。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                            2.&nbsp;
                                        </span>
                                    </strong>
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                            专业特色
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        （1）厚基础，重应用，培养学生竞争力：理论和专业基础方面围绕以Java 企业级开发技术、软件工程及软件
                                        体系架构、软件测试等3条主线展开教学。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        （2）注重案例与实验教学，加强实际动手能力的培养：在专业基础课和专业主干课教学中探索以实际案例进行
                                        渐进式教学，90% 以上的专业课程都开设相应的课程实验。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        （3）积极探索校企合作培养软件人才的新模式：引进与国际接轨的培训模式，与浦东软件园知名 IT 企业建立
                                        了联合校外实训中心和校内实训基地，积极促进学生参与实际项目的研发和实践。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:times new roman, serif;color:black;">
                                        3
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        、
                                    </span>
                                    <strong>
                                        <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                            核心课程
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        计算机科学导论、面向对象程序设计
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:微软雅黑, sans-serif;color:black;">
                                        (Java)
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        、数字电路与数字逻辑、数据结构（
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:微软雅黑, sans-serif;color:black;">
                                        Java
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        ）、计算机组成原理、数据库原理与应用、面向对象分析与设计、软件工程概论、软件项目管理、软件测试与
                                        质量控制、软件系统设计与体系结构、计算机网络原理及应用、
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:微软雅黑, sans-serif;color:black;">
                                        Java EE
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;color:black;">
                                        等。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;text-indent:32px;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;">
                                        学生继续深造的方向：软件工程、信息安全工程、计算机应用技术等。
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;
                                background-color:#ffffff;line-height:18px;">
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;">
                                        软件产业的发展水平，决定了一个国家的信息产业发展水平及其在国际市场上的综合竞争力。未来几年，
                                        国内外高层次软件人才将供不应求。毕业生主要在各大软件公司、企事业单位、高等院校、各大研究所、
                                        国防等重要部门从事软件设计、开发、应用与研究工作。目前，我国软件高级人才的短缺已经成为制约我国软
                                        件产业快速发展的一个瓶颈。在国内市场对软件人才的需求每年高达
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:times new roman, serif;">
                                        20
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;">
                                        万人，而高校计算机毕业生中的软件工程人才还很缺乏，尤其是高素质的软件工程人才的极度短缺。
                                        尽快培养起适合信息产业所需要的高素质软件工程人才，已经成为信息化工作中的重中之重。在中国十大
                                    </span>
                                    <span style="font-size:16px;line-height:24px;font-family:times new roman, serif;">IT</span>
                                    <span style="font-size:16px;line-height:24px;font-family:宋体,serif;">
                                        职场人气职位中，软件工程人才的就业前景十分乐观。
                                    </span>
                                </p>
                                <p>
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

