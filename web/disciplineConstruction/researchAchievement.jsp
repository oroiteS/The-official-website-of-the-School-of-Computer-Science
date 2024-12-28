<%--
*ClassName: researchAchievement
*Package: disciplineConstruction
*CreateTime: 2024/11/24-19:05
*Description: 科研成果
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
                            计算机科学与技术学院科研项目
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2016-01-05
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;text-indent:37px">
                                    <strong>
                                        <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                            学院目前已承担100余项国家自然科学基金项目、教育部科技项目、上海市科委重点项目、上海市科委创
                                            新行动计划及各类人才计划等纵向项目；另已承担各类电力及计算机互联网企业委托科研项目100余项。
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;text-indent:37px">
                                    <strong>
                                        <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                            <br>
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;text-indent:37px">
                                    <strong></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong>
                                        <span>
                                            <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                                国家自然科学基金
                                            </span>
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [1]国家自然科学基金（联合基金
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">）</span>
                                        ：基于内生安全的工业互联网主动安全防护机制研究
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        ,&nbsp;2024.01.01-2027.12.31，255万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">[2]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        &nbsp;国家自然科学基金委（联合基金）：基于深度学习的高通量网络攻击智能检测与场景构建研究，
                                        2020.01.01-2023.12.31，308.8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">[3]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                    国家自然科学基金（面上）：面向公专融合网络的密态数据安全查询研究，2024.01.01-2027.12.31，50万元;
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [4] &nbsp;国家自然科学基金（面上）：面向电网可用性的V2G交互信息隐私保护关键技术，
                                        2019.01.01-2022.12.31，78万元;
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [5] 国家自然科学基金（青年）：面向移动社交网络的室内位置服务系统安全性研究，
                                        2024.01.01-2026.12.31，30万元;
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[6]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        国家自然科学基金（青年）：代理重加密在智能电网安全数据共享中的应用及关键技术研究，
                                        2019.01.01-2021.12.31，29.26万元;
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [7] 国家自然科学基金（青年）：智能电网中密态数据的可验证外包计算研究，
                                        2019.01.01-2021.12.31，31.78万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [8] 国家自然科学基金（青年）：面向多云存储的安全访问机制关键技术研究，
                                        2018.01.01-2020.12.31，30万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [9] 国家自然科学基金（重点基金子项目）：区域能源互联网的分布式协同控制与智能决策，
                                        2023.01.01-2027.12.31，64.86万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [10] 国家自然科学基金（面上）：基于齐次系统理论的非递归控制方法与应用研究，
                                        2022.01.01-2025.12.31，74.1万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [11]&nbsp;国家自然科学基金（联合基金子项目）：面向大规模数字图像的安全外包隐写分析，
                                        2018.01.01-2020.12.31，13.2万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [12] 国家自然科学基金（青年）：基于大数据处理模型的数字岩心重构方法研究，2018.01.01-2020.12.31
                                    </span>
                                    <span style="font-family:华文楷体,serif;font-size:19px;">，10万元；</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [13] 国家自然科学基金（面上）：数据库服务中数据的隐私保护及可控性关键技术研究，
                                        2018.01.01-2021.12.31，75万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [14] 国家自然科学基金（面上），页岩三位数字岩心表征及重构方法研究，2017.01.01-2020.12.31，67.2万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [15] 国家自然科学基金（青年）：基于低维特征构造及无监督分类的网络图像隐写分析，
                                        2017.01.01-2019.12.31，23.64万元;
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:28.5px;font-family:华文楷体;font-size:19px;">[16] 国家自然科学基金（青年）：非线性不确定系统的其次控制理论及应用研究，
                                        2016.01.01-2018.12.31，24万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white;">
                                        [17] 国家自然科学基金项目（
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">面上</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white;">
                                        ）：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        面向电网监测的无线传感器网络性能优化机制研究(61572310),&nbsp;
                                        <span style="background:white">2016.01.01—2019.12.31</span>
                                        <span style="background:white">，</span>
                                        79.2万元；　
                                    </span>
                                    <br>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;"></span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[18]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        国家自然科学基金项目（
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">面上</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        智能电网中数据的隐私保护与可用性关键技术研究(61572311) ,&nbsp;
                                        <span style="background:white">2016.01.01—2019.12.31</span>
                                        <span style="background:white">，</span>
                                        78.9万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[19]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        国家自然科学基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">（</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">面上</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ：面向智能电网负荷预测的电力大数据关键技术（61472236），2015.01.01—2018.12.31，85万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[20]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        国家自然科学基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">面上</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        ：基于随机网络演算的智能电网统一系统建模；(61373152)
                                        <span style="background:white">&nbsp;,&nbsp;</span>
                                        2014.01.01-2017.12.31，
                                        <span style="background:white">76</span>
                                        <span style="background:white">万元；</span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[21]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        国家自然科学基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">面上</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ：电力监测无线传感器网络中感知数据的容忍与查询（61272437），2013.01.01—2016.12.31，82万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[22]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        国家自然基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">面上</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ：基于云计算的海量网络数据管理与搜索技术（61073189）, &nbsp;2011.01.01—2013.12.31，33万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[23]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        国家自然科学基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">面上子项目</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">）</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ：基于节点社会性行为分析的车辆网络优化技术研究；（61373157）， 2013.01.01-2016.12.31，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[24]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        国家自然科学基金（
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        面上子项目
                                        <span style="background:white">
                                            ）：XML个性化协作搜索及其在社会网络服务中的应用，（61170085），
                                            2012.01.01-2015.03.31，3万元；
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[25]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        国家自然基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">青年</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        基于张量学习的多源异质多视角视频显著性分析，(61503235),&nbsp;&nbsp;
                                        <span style="background:white">2016.01.01—2018.12.31</span>
                                        <span style="background:white">，</span>&nbsp;22万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[26]&nbsp;</span>
                                    <span
                                        style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        国家自然科学基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">青年</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        ：面向社会媒体数据的子空间聚类算法研究, (61403247)，2015.01.01-2017.12.31，25万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[27]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">国家自然科学基金项目</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">青年</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        ：基于粒计算与语义模板的问答系统研究；(61305094)，2014.01.01-2016.12.31，25万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[28]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        国家自然科学基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">青年</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        ：面向数据库服务隐私增强的访问控制策略；(61202020)，2013.01.01-2015.12.31，23万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[29]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        国家自然科学基金项目
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        （
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">青年</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;background:white">
                                        ）
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        ：无线传感器网络中密钥的动态连续性问题研究，(60903188)，2010.01.01-2012.12.31，17万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong>
                                        <span>
                                            <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                                科技部
                                            </span>
                                        </span>
                                    </strong>
                                </p>
                                <p class="p_text_indent_2"
                                   style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [1] 科技部国家外国专家局项目：微能源网用户侧行为数据分析及分布式储能优化配置技术研究，
                                        2023.05.01-2025.04.30；30万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong><span><span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        教育部
                                    </span></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[1]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        区块链数据管理教育部工程研究中心：面向可修订区块链的后量子变色龙签名研究，
                                        2023.09.01-2024.08.31，2万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [2] 上海交通大学“电力传输与功率变换控制”教育部重点实验室：基于量子蚁群算法额配电网故障定位研究，
                                        2022.10.01-2024.02.28，2万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[3]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        教育部留学回国科研启动基金：智能电网中隐私安全的数据加密机制研究,已获批准.
                                        2015.01-2016.12，3万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong></strong></p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong><span><span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市自然科学基金
                                    </span></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [1] 上海市自然科学基金项目：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        基于深度对抗学习的安全图像隐写研究，
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        2020.7.1-2023.6.30，20万元；
                                        <br>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[2]&nbsp;
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            上海市自然科学基金项目：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        基于流行约束卷积稀疏表示的人脸特征识别方法研究，
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            2019.7.1-2022.6.30，20万元；
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            [3]&nbsp;
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                上海市自然科学基金项目：
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        趋于大信号稳定性的直流微电网非线性控制技术研究,2019.7.1-2022.6.30，20万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [4]&nbsp;
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            上海市自然科学基金项目：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                        基于多点统计方法的空间数据随机重建,2016.7.1-2019.6.30，20万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                        [5]&nbsp;
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            上海市自然科学基金项目：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                        低维特征空间下的数字图像隐写分析研究，2
                                    </span>
                                    <span style="line-height:29px;color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                016.7.1-2019.6.30，20万元；
                                            </span>
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    [6]&nbsp;
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="font-family:华文楷体,serif;font-size:19px;">
                                        上海市自然科学基金项目：劣质容忍的电力负荷曲线数据质量控制技术研究，2013-2015，10万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[7]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市自然科学基金项目：基于不确定性插值的图像散乱信息重构研究，2012-2015，10万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[8]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市自然科学基金项目：数据库服务中隐私增强访问控制的关键技术研究，2012-2015，10万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [9]&nbsp;
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市自然科学基金项目：数码照片真实性的盲取证研究，2011-2013，10万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[10]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市自然科学基金项目：基于语义场的图像检索技术研究，2009-2011，10万元
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <br></p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong><span><span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市基础重点
                                    </span></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[1]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市科委基础重点项目：智能电网环境下居民用电隐私保护的可搜索加密机制研究, （13JC1403503），
                                        2013.09-2016.12
                                        <span style="background:white">，20万元；
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[2]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市科委基础重点项目：电力监测无线传感器网络的故障诊断与安全机制（12JC1404500），
                                        2013.1.1—2015.1
                                        <span style="background:white">2.31</span>
                                        <span style="background:white">，40万元；</span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <br>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong><span><span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市地方能力建设
                                    </span></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [1] 上海市科委部分地方院校能力建设项目：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        面向新型电力系统的输电线路智能巡检关键技术研究与应用，2023.1.1-2025.12.31，40万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[2] 上海市
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            科委部分地方院校能力建设项目：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        并网型工业微电网安全态势感知关键技术研究，2
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            020.1.1-2023.9.30，60万元；
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">[3]&nbsp;
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                上海市
                                            </span>
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                科委部分地方院校能力建设项目：
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            面向智能电网互动用电信息质量的数据安全关键技术研究，2015.11.1-2018.10.31，100万元；
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[4]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市科委地方能力建设项目：面向电力大数据的设备故障诊断与预警关键技术研究,
                                        (14110500800),&nbsp; 2014.09-2016.12,&nbsp; 80万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[5]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市科委地方能力建设项目：面向建筑能耗监控的自维持无线传感器网络关键技术研究,
                                        (12510500700) , 2012.09-2014.09，80万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[6]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市科委地方能力建设项目：电力用户侧智能控制与优化决策关键技术研究,
                                        ( 09160501700),&nbsp; 2009.11-2012.12；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <br></p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong>
                                        <span>
                                            <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                                上海市人才计划
                                            </span>
                                        </span>
                                    </strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [1] 上海市科委科技启明星计划：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        云边协同智能电网中全密态数据隐私流转研究，2022.6.1-2025.5.31，40万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [2] 上海市科委优秀学术带头人（青年）：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        面向区域能源互联网持续性攻击的智能检测与免疫技术研究，2021.9.1-2024.8.31，40万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[3]&nbsp;
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            上海市科委扬帆计划：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        基于编码的短公钥加密算法与身份鉴别协议转化签名算法研究，2021.5.1-2024.4.30，20万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [4]&nbsp;上海市科委扬帆计划：基于D-Wave量子退火的RSA公钥密码破译，2021.5.1-2024.4.30，20万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [5] 上海市科委科技启明星计划：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        特征模型条件下直流微电网复合控制与优化研究，2020.6.1-2023.5.31,40万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[6]&nbsp;
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            上海市科委扬帆计划：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        面向新能源的DC-DC变换器高效控制算法研究，2015.1.1-2017.12.31，10万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[7]&nbsp;
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            上海市教委晨光计划：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        智能电网中密文数据一致性检测和实用搜索研究，2018.12.1-2021.12.31，6万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [8] 上海市教委曙光计划：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        面向电力大数据可用性的存储安全保护机制研究，2017.1.1-2019.12.31，15万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[9]&nbsp;
                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                            上海市教委晨光计划：
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        面向电力电子变换器的主动抗干扰控制研究，2016.1.1-2018.12.31，6万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[10]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委晨光计划：基于粒计算的智能电网负荷预测关键技术，2014-2017，6万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[11]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市科委扬帆计划：面向社会媒体演化数据和链接约束数据的聚类算法研究，2014-2017，10万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <br></p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong><span><span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市科委软课题
                                    </span></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [1] 上海市科委软科学项目：
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        数据驱动的需求响应下云储能用户行为分析及优化配置策略研 究，2023.3.1-2024.2.29，10万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">[2]</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        上海市科委软科学项目：大数据与新兴业态关键技术研究，2014-2015，10万元；
                                    </span>
                                    <br>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <br></p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong><span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        上海市教委教育科学研究项目
                                    </span></strong>
                                </p>
                                <p class="p_text_indent_2"
                                   style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[1]&nbsp;上海市教委教育科学研究项目：基于“X+1+X”校政企深度融合的高水平应用人才培养模式研究，
                                        2020.1.1-2022.12.31，3万元；
                                    </span>
                                </p>
                                <p class="p_text_indent_2" style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;"><br></span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong><span><span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委创新
                                    </span></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[1]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新（重点项目）： 基于随机网络演算的智能电网优化控制关键技术研究, 
                                        2013-2016，16万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[2]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新（重点项目）：电力监测无线传感网中不确定数据质量控制与修复技术研究，
                                        2012-2015，16万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[3]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新（重点项目），基于类格的多层文本分类技术研究，2009-2012，16万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[4]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委科研创新：智能电网中居民隐私保护的多维数据加密与查询机制研究，2013-2016，8万元；</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[5]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新：面向互联网流数据和演化数据的子空间聚类算法研究，2013-2016，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[6]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新：基于软件攻击图的动态完整性度量研究，2011-2014，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[7]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新：基于云计算的粗糙集属性约简方法研究及其在电力系统中的应用，2011-2014，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[8]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新：面向数据库服务动态的访问控制策略研究，2011-2013，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[9]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新：基于几何变换的数字图像篡改被动取证，2010-2013，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[10]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新：电力信息网络中整数溢出漏洞的群智检测技术研究，2010-2013，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[11]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新，无线自组织网络中密钥的动态连续性问题研究, 2009-2012，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[12]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新，应用层组播的关键技术与应用研究，2009-2011，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[13]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委科研创新，基于场空间的图像语义检索技术研究，2009-2011，8万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <br></p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px">
                                    <strong></strong><strong><span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目</span></span></strong>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[1]
                                        <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                            上海市教委优青项目，
                                        </span>
                                        <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                            《数据可视化技术》思政示范课程建设，2022.1.1-2023.12.31，3.5万元；
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                [2]&nbsp;
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    上海市教委优青项目，
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        工程认证背景下算法设计与分析课程 思政建设探索，2022.1.1-2023.12.31，3.5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [3]&nbsp;上海市教委优青项目，课程思政改革要求下的信息安全 概论课堂教学案例设计，
                                        2022.1.1-2023.12.31，3.5万元；
                                        <br>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        [4]&nbsp;上海市教委优青项目，在线教学背景下大学生第二课堂“立德树人”育人效果评价研究，
                                        2020.1.1-2021.12.31，3.5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    [5]&nbsp;
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        上海市教委优青项目，
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        课程思政视域下大学生心理健康教育在线教学设计研究，2020.1.1-2021.12.31，3.5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        <span class="fontStyle0">
                                            <span  style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                [6]&nbsp;
                                                            </span>
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                上海市教委优青项目，
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        课程思政改革要求下信息安全专业学生评价制度研究，2019.1.1-2020.12.31，3.5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    [7]&nbsp;
                                                                </span>
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    上海市教委优青项目，
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        具有特殊性质的无证书公钥加密体制研究，2018.1.1-2019.12.31，3.5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                        [8]&nbsp;
                                                                    </span>
                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                        上海市教委优青项目，
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        DaaS模式下的安全数据查询技术研究，
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                        2016.1.1-2018.12.31，5万元；
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                            [9]&nbsp;
                                                                        </span>
                                                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                            上海市教委优青项目，
                                                                        </span>
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        基于通用失真类型的图像质量评价方法，2015.1.1-2017.12.31，5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="font-family:华文楷体,serif;font-size:19px;background-color:#ffffff;">
                                        [10]&nbsp;
                                    </span>
                                    <span style="font-family:华文楷体,serif;font-size:19px;background-color:#ffffff;">
                                        上海市教委优青项目，
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        优化广义率失真性能的安全隐写研究，
                                    </span>
                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                        2015.1.1-2017.12.31，5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                            [11]&nbsp;
                                                                        </span>
                                                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                            上海市教委优青项目，
                                                                        </span>
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        全自动表面配准技术的研究与实现，
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#222222;font-family:华文楷体;font-size:19px;">
                                                                        <span style="color:#222222;font-family:华文楷体;font-size:19px;">
                                                                            <span style="color:#222222;font-family:华文楷体;font-size:19px;">
                                                                                <span style="color:#222222;font-family:华文楷体;font-size:19px;">
                                                                                    <span style="color:#333333;font-family:microsoft yahei;font-size:12px;background-color:#ffffff;">
                                                                                        <span style="color:#222222;font-family:华文楷体;font-size:19px;">
                                                                                            2015.1.1-2017.12.31，5万元；
                                                                                        </span>
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                        [12]&nbsp;
                                                                                    </span>
                                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                        上海市教委优青项目，
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        基于映射的VLSI电路可靠性评估方法及其在3D IC中的应用
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                        <span style="color:#222222;line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                                                                            ，
                                                                                        </span>
                                                                                        <span style="color:#222222;line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                                                                            <span class="fontStyle0">
                                                                                                <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                                                                    <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                                        <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;">
                                                                                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                                                                2015.1.1-2017.12.31，5万元；
                                                                                                            </span>
                                                                                                        </span>
                                                                                                    </span>
                                                                                                </span>
                                                                                            </span>
                                                                                        </span>
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </span>
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;background-color:#ffffff;">
                                                    [13]&nbsp;
                                                </span>
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;background-color:#ffffff;">
                                                    上海市教委优青项目，
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        复杂非线性系统的干扰抑制控制研究
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                        <span class="fontStyle0">
                                            <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;background-color:#ffffff;">
                                                    <span style="color:#222222;line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                                        ，</span>
                                                    <span style="color:#222222;line-height:29px;font-family:华文楷体,serif;font-size:19px;">
                                                        <span class="fontStyle0">
                                                            <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;background-color:#ffffff;">
                                                                <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                    <span style="color:#333333;font-family:microsoft yahei,serif;font-size:12px;">
                                                                        <span style="color:#222222;font-family:华文楷体,serif;font-size:19px;">
                                                                            2015.1.1-2017.12.31，5万元；
                                                                        </span>
                                                                    </span>
                                                                </span>
                                                            </span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[14]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委优青项目，关于并行粒子群优化算法的研究，2013-2015，5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[15]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委优青项目，中西不同文化视野下大学生志愿服务精神对比分析--以和合观为例，
                                        2013-20 15，3.5万元；
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[16]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委优青项目，大学生网络政治参与行为研究，2013-2015，4.5万元;
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[17]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委优青项目，基于多点信息统计法的图像散乱数据重构研究，2012-2015，5万元
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        [18]&nbsp;
                                    </span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">
                                        上海市教委优青项目，基于模糊粗糙集的大型燃煤机组煤耗关键因素研究，2011-2013，3万元;
                                    </span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[19]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，基于UML的面向对象软件测试技术研究，2011-2013，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[20]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，基于复杂网络的C2C消费者购物行为社区研究，2011-2012，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[21]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，资源受限的传感器网络中快速密钥建立与更新方法的研究，2010-2012，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[22]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，WCF及其在分布式软件中的应用研究，2009-2010，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[23]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，和谐校园视野下的大学生违纪后教育问题研究，2009-2010，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[24]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，图像的语义获取和表示方法研究，2009-2010，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[25]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，基于TCP的安全操作系统若干关键技术研究，2009-2010，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[26]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，基于覆盖网络组播的关键算法研究，2009-2010，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[27]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，数字内容全生命周期保护应用研究，2009-2010，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[28]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，大学生网络行为的规范与引导问题研究，2008-2009，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[29]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，web流数据的挖掘技术研究，2008-2009，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[30]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，大规模非规范web信息提取技术研究，2008-2009，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[31]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，图像测量中的圆中心检测方法研究，2008-2009，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[32]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，个性化信息检索技术研究，2006-2008，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[33]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，Web构件描述模型的研究与设计，2006-2008，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[34]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，基于身份的高效、安全签名算法研究，2006-2008，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[35]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，基于遗传算法的分形图像压缩研究与应用，2006-2008，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[36]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，密码算法的性能优化研究，2006-2007，3万元;</span>
                                </p>
                                <p style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:14px;line-height:21px;margin-top:0;margin-bottom:0;margin-left:28px;">
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">[37]&nbsp;</span>
                                    <span style="line-height:29px;font-family:华文楷体,serif;font-size:19px">上海市教委优青项目，基于J2EE架构的电子政务数据智能集成模型的研究，2006-2007，3万元;</span>
                                </p>
                                <p><br></p></div>
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



