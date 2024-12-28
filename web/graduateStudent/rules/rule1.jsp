<%--
*ClassName: rule1
*Package: graduateStudent.rules
*CreateTime: 2024/11/25-0:54
*Description: 规章制度·SCI期刊、CCF推荐国际学术会议及期刊目录（2022年版）/北大中文核心期刊目录（2023年）
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SCI期刊、CCF推荐国际学术会议及期刊目录（2022年版）/北大中文核心期刊目录（2023年）</title>
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
                            SCI期刊、CCF推荐国际学术会议及期刊目录（2022年版）/北大中文核心期刊目录（2023年）
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2022-03-16
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <p>
                                    <img src="${pageContext.request.contextPath}/img/icon_pdf.gif" alt="pdf">
                                        <a href="sci.pdf" style="color: black;text-decoration: none;">
                                            中国计算机学会推荐国际学术会议和期刊目录-2022.pdf
                                        </a>
                                </p>
                                <p>
                                    <span style="background-color:#ffffff;color:#333333;font-family:宋体, simsun,serif;
                                    font-size:18px;letter-spacing:0;text-indent:26px;">
                                        <br>
                                    </span>
                                </p>
                                <p>
                                    <span style="background-color:#ffffff;color:#333333;font-family:宋体, simsun,serif;
                                    font-size:18px;letter-spacing:0;text-indent:26px;">
                                        <br>
                                    </span>
                                </p>
                                <p>
                                    <span style="background-color:#ffffff;color:#333333;font-family:宋体, simsun,serif;
                                    font-size:18px;letter-spacing:0;text-indent:26px;">
                                        SCI论文分区及影响因子查询网址（以最新升级版为准）
                                    </span>
                                </p>
                                <p>
                                    <a href="https://www.letpub.com.cn/index.php?page=journalapp"
                                       style="font-family:inherit;font-size:13px;text-indent:26px;margin:0;padding:0;
                                       border:0;vertical-align:baseline;color:#333333;text-decoration-line:none;">
                                        <span style="margin:0;padding:0;border:0;font-size:18px;font-family:宋体,
                                        simsun,serif;vertical-align:baseline;letter-spacing:0;background-image:initial;
                                        background-position:initial;background-size:initial;background-repeat:initial;
                                        background-attachment:initial;background-origin:initial;background-clip:initial;">
                                            https://www.letpub.com.cn/index.php?page=journalapp
                                        </span>
                                    </a>
                                </p>
                                <p>
                                    &nbsp; &nbsp;&nbsp;
                                    <strong style="font-size:14px;">
                                        <span style="color:#ff0000;">
                                            &nbsp; &nbsp;
                                        </span>
                                    </strong>
                                </p>
                                <p>
                                    <strong style="font-size:14px;"><span style="color:#ff0000;">
                                        <br>
                                    </span>
                                    </strong>
                                </p>
                                <p>
                                    <strong style="font-size:14px;">
                                        <span style="color:#ff0000;">
                                            中文期刊收录查询网址：
                                        </span>
                                    </strong>
                                    <a href="https://navi.cnki.net/knavi/journals/search?q=%E5%AE%9E%E9%AA%8C%E5%AE%A4%E7%A0%94%E7%A9%B6%E4%B8%8E%E6%8E%A2%E7%B4%A2"
                                       style="color: black;font-size:14px;">
                                        https://navi.cnki.net/knavi/journals/search?q=%E5%AE%9E%E9%AA%8C%E5%AE%A4%E7%A0%
                                        94%E7%A9%B6%E4%B8%8E%E6%8E%A2%E7%B4%A2
                                    </a>
                                </p>
                                <p>
                                    <br>
                                </p>
                                <p><br></p>
                                <p><br></p>
                                <p><br></p>
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

