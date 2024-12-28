<%--
*ClassName: tutorsDirectory
*Package: graduateStudent
*CreateTime: 2024/11/25-1:01
*Description: 导师名录
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>上海电力大学计算机科学与技术学院 关于在读硕士生更换导师的规定</title>
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
                            计算机科学与技术学院--研究生导师名录
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2016-01-05
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <p style="font:18px / 26px arial, 宋体, helvetica, sans-serif;text-align:left;
                                color:#222222;text-indent:0;letter-spacing:normal;word-spacing:0;
                                -webkit-text-stroke-width:0;">
                                    <strong>
                                        <span style="text-decoration:underline;">校内导师：</span>
                                    </strong>
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;
                                color:#222222;text-indent:0;letter-spacing:normal;word-spacing:0;font-size-adjust:none;
                                font-stretch:normal;-webkit-text-stroke-width:0;">
                                    081200计算机科学与技术专业硕士生导师：
                                </p>
                                <p style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;
                                font-size:14px;line-height:26px;font-family:arial, 宋体, helvetica, sans-serif;
                                color:#222222;">
                                    毕忠勤&nbsp;&nbsp; &nbsp;&nbsp;杜海舟&nbsp; &nbsp; &nbsp;田秀霞&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;王勇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;魏为民&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                </p>
                                <p style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;
                                font-size:14px;line-height:26px;font-family:arial, 宋体, helvetica, sans-serif;color:#222222;">
                                    &nbsp;温蜜&nbsp; &nbsp; &nbsp; &nbsp;李晋国&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;刘大明&nbsp;
                                    &nbsp; &nbsp;&nbsp;王亮亮&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;王真
                                </p>
                                <p style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;
                                font-size:14px;line-height:26px;font-family:arial, 宋体, helvetica, sans-serif;color:#222222;">
                                    栗风永&nbsp; &nbsp; &nbsp;&nbsp;张凯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;张传林
                                    &nbsp; &nbsp; &nbsp;王道累&nbsp; &nbsp; &nbsp; 卢芳芳
                                </p>
                                <p style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;
                                font-size:14px;line-height:26px;font-family:arial, 宋体, helvetica, sans-serif;color:#222222;">
                                    陈思远&nbsp;&nbsp;&nbsp;&nbsp; 王宝楠&nbsp; &nbsp; &nbsp; 孙超超&nbsp; &nbsp; &nbsp;
                                    &nbsp;
                                    徐曼&nbsp; &nbsp; &nbsp; &nbsp;彭源
                                </p>
                                <p style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;
                                font-size:14px;line-height:26px;font-family:arial, 宋体, helvetica, sans-serif;color:#222222;">
                                    王西龙&nbsp; &nbsp; &nbsp;张伟娜&nbsp; &nbsp; &nbsp;范自柱>&nbsp; &nbsp; &nbsp;
                                    &nbsp;
                                    刘辉&nbsp; &nbsp; &nbsp; &nbsp;李玮玮
                                </p>
                                <p style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;
                                font-size:14px;line-height:26px;font-family:arial, 宋体, helvetica, sans-serif;color:#222222;">
                                    <br>
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;
                                text-indent:0;letter-spacing:normal;word-spacing:0;font-size-adjust:none;font-stretch:normal;
                                -webkit-text-stroke-width:0;">
                                    0854电子信息大类硕士生导师：
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;
                                text-indent:0;letter-spacing:normal;word-spacing:0;font-size-adjust:none;font-stretch:normal;
                                -webkit-text-stroke-width:0;">
                                    毕忠勤&nbsp;&nbsp; &nbsp; 曹渝昆&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;">成贵学</span>
                                    &nbsp; &nbsp; 杜海舟
                                    <span style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;">&nbsp;</span>
                                    &nbsp; &nbsp; &nbsp;范自柱&nbsp; &nbsp; &nbsp;李红娇&nbsp;&nbsp;&nbsp;&nbsp;
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0;letter-spacing:normal;word-spacing:0;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0;">
                                    李婧&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;田秀霞&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;王勇
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;魏为民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    温蜜&nbsp;&nbsp;&nbsp; &nbsp; 徐菲菲&nbsp; &nbsp;
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0;letter-spacing:normal;word-spacing:0;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0;">
                                    张安勤&nbsp;&nbsp;&nbsp;&nbsp;李晋国&nbsp;&nbsp;&nbsp;&nbsp;
                                    刘大明&nbsp;&nbsp;&nbsp;<span>王亮亮</span>&nbsp;&nbsp;
                                    &nbsp;&nbsp; 卢芳芳&nbsp;&nbsp; &nbsp; 王真
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                   栗风永&nbsp;&nbsp; &nbsp; 李舫&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 张凯&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;张挺&nbsp; &nbsp;&nbsp; &nbsp; 张传林&nbsp;&nbsp; &nbsp;王道累
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                   陈思远&nbsp;&nbsp;&nbsp;&nbsp;王宝楠&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;孙超超&nbsp;&nbsp;&nbsp;
                                    &nbsp;徐曼&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;彭源&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;王西龙&nbsp; &nbsp;
                                    &nbsp;
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    张伟娜&nbsp; &nbsp; &nbsp; 刘辉&nbsp; &nbsp;&nbsp; &nbsp;李玮玮
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    <br></p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    <strong><span
                                            style="font-size:18px;text-decoration:underline;">校外导师：</span></strong>
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                   田英杰&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;何蔚&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;毕艳冰&nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp;赵娜&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; 郭乃网&nbsp; &nbsp;
                                    &nbsp; &nbsp;
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    苏运&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;杨洪山&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;马雨出&nbsp; &nbsp;
                                    &nbsp; &nbsp;邹春明&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;蔡立志&nbsp; &nbsp;
                                    &nbsp; &nbsp;
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    王继刚&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;吕卓&nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;黄龙飞&nbsp; &nbsp;
                                    &nbsp; &nbsp;邓建华&nbsp;&nbsp;&nbsp;
                                    &nbsp; &nbsp; &nbsp;吴春江&nbsp; &nbsp;
                                    &nbsp; &nbsp;
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    王亿&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;郭志民&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; 白雪&nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;张敏&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;徐浩煜
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    周海昌&nbsp; &nbsp; &nbsp; &nbsp; 吴裔&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    王胜&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 宁雪峰&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 刘萌
                                </p>
                                <p style="font:14px/26px arial, 宋体, helvetica, sans-serif;text-align:left;color:#222222;text-indent:0px;letter-spacing:normal;word-spacing:0px;font-size-adjust:none;font-stretch:normal;-webkit-text-stroke-width:0px;">
                                    &nbsp;王宏
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

