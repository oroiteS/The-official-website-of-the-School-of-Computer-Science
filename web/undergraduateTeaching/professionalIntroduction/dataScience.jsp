<%--
*ClassName: dataScience
*Package: undergraduateTeaching.professionalIntroduction
*CreateTime: 2024/11/25-0:17
*Description: 专业介绍·大数据
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
                            计算机科学与技术专业介绍
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2024-09-09
                        </h4>
                        <div id="newsContent">
                            <div style="margin-bottom: 5px;display: flex;justify-content: center;align-items: center;">
                                <video id="video" src="${pageContext.request.contextPath}/video/dataScienceVideo.mp4"
                                       style="cursor: pointer;"></video>
                            </div>
                            <div class="wp_articleContent">
                                <p></p>
                                <p style="mso-line-height-rule:exactly;box-sizing:border-box;margin: 1rem 1rem 0;">
                                    <span style="font-size:19px;">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <strong style="font-size:19px;">
                                            <span style="font-size:21px;">(数据科学与大数据技术专业宣传片)</span>
                                        </strong>
                                    </span>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;background:white;margin: 0 0 0;">
                                    <span style="box-sizing:border-box;">
                                        <strong>
                                            <span style="box-sizing:border-box;font-size:20px;">&nbsp;培养目标</span>
                                        </strong>
                                    </span>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;box-sizing:border-box;margin: 1rem 1rem 0;">
                                    <span style="font-size:19px;" lang="EN-US">&nbsp; &nbsp;&nbsp;</span><span
                                        style="font-size:19px;">本专业适应经济社会和国家能源电力发展战略新要求和新需求，面向现代能源电力生产和现代化经济建设一线，培养是有坚定理想信念、家国情怀、国际视野和综合素养，德智体美劳全面发展，具备扎实的应用数学、统计学和计算机等相关学科基本理论和基本知识，掌握大数据采集、存储、处理与分析、传输与应用等技术，具备大数据工程项目的系统集成能力、应用软件设计和开发能力，从事数据科学与大数据技术的科研、开发、管理工作，具有较强系统分析和决策能力及创新意识，适应行业发展变革的高水平应用型人才。</span>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;box-sizing:border-box;margin: 1rem 1rem 0;">
                                    <span style="font-size:19px;"></span><span
                                        style="font-size:19px;">本专业培养学生毕业</span><span lang="EN-US"
                                                                                               style="font-size:19px;">5</span><span
                                        style="font-size:19px;">年左右在社会和专业领域应达到的具体目标包括</span><span
                                        lang="EN-US" style="font-size:19px;">:</span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;" lang="EN-US">&nbsp; &nbsp;&nbsp;</span><span
                                        style="font-size:19px;">目标<span lang="EN-US">1:</span>具备良好的综合素养。掌握马列主义、毛泽东思想与中国特色社会主义基本理论，具有健全的人格、良好的人文社会科学素养和心理素质，具备高尚的职业道德和强烈的社会责任感<span
                                        lang="EN-US">;</span></span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;" lang="EN-US">&nbsp; &nbsp;&nbsp;</span><span
                                        style="font-size:19px;">目标<span lang="EN-US">2:</span>具有国际化视野和交流合作能力。能够在多学科和跨文化环境下开展工作。具备一定的英文能力，能阅读本专业的英文资料和文献，有较好的语言表达能具有一定的组织管理能力和团队合作能力，具备在团队中分工协作、交流沟通能力，以及发挥领导作用的潜力，能胜任技术负责、经营与管理等工作;</span>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;" lang="EN-US">&nbsp; &nbsp;&nbsp;</span><span
                                        style="font-size:19px;">目标<span lang="EN-US">3:</span>掌握专业基础知识。掌握从事本专业工作所需的数学、计算机科学、统计学、数据科学与大数据技术等学科领域的基础知识，能够运用相关技术标准及专业知识和工程技术原则<span
                                        lang="EN-US">;</span></span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;" lang="EN-US">&nbsp; &nbsp;&nbsp;</span><span
                                        style="font-size:19px;">目标<span lang="EN-US">4:</span>具有解决复杂工程问题的能力。具有大数据专业扎实的理论基础和宽厚的专业视野，具有较高的综合业务素质、较强的创新与实践能力，具备运用专业知识和工程技术解决相关领域复杂工程技术问题的实际工作能力。能够从事大数据应用分析、大数据应用开发、大数据系统研发及数据可视化等工作<span
                                        lang="EN-US">;</span></span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;" lang="EN-US">&nbsp; &nbsp;</span><span
                                        style="font-size:19px;">目标<span lang="EN-US">5:</span>具有终身学习的能力。具有终身学习与专业发展的意识和自我管理能力，具备运用现代信息技术手段获取相关信息和新技术、新知识，不断学习适应社会发展和行业竞争的能力<span
                                        lang="EN-US">;</span></span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;" lang="EN-US">&nbsp; &nbsp;</span><span
                                        style="font-size:19px;">目标<span lang="EN-US">6:</span>具有创新意识和能力。了解数据科学的发展现状和趋势，具有创新意识，并具有理论创新和系统创新的初步能力。</span>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <strong style="font-size:14px;"><span style="box-sizing:border-box;font-size:20px;">专业特色</span></strong>
                                </p>
                                <p style="text-indent:37px;mso-char-indent-count:2.0;line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;">&nbsp;定位于新工科人才培养，将按照新工科人才素质要求探索多元化的人才培养模式。结合学校电力特色，培养服务于能源电力行业的高水平应用型数据科学人才，更好地服务于能源互联网的建设。</span>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;background:white;margin: 0 0 0;">
                                    <strong><span style="box-sizing:border-box;"><span
                                            style="box-sizing:border-box;font-size:20px;">主干课程</span></span></strong>
                                </p>
                                <p style="text-indent:37px;mso-char-indent-count:2.0;line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;">&nbsp;数据科学导论、数据库原理、数据结构、算法设计与分析、现代应用统计学、面向数据科学编程语言<span
                                            lang="EN-US">Python</span>、大数据分布式存储技术、大数据分析与应用。</span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;background:white;margin: 0 0 0;">
                                    <strong><span style="box-sizing:border-box;"><span
                                            style="box-sizing:border-box;font-size:20px;">就业方向</span></span></strong>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;">&nbsp; &nbsp;大数据分析、处理、服务、开发和利用；</span>
                                </p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;">&nbsp; &nbsp;大数据系统集成与管理维护；</span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;">&nbsp; &nbsp;大数据研究、咨询、教育培训。</span></p>
                                <p style="line-height:37px;mso-line-height-rule:exactly;margin: 0 0 0;">
                                    <span style="font-size:19px;"></span></p>
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
<script src="${pageContext.request.contextPath}/js/undergraduateTeaching/video.js"></script>
</body>
</html>


