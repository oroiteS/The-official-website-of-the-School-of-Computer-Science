<%--
*ClassName: list1
*Package: graduateStudent.studentEnrollment
*CreateTime: 2024/12/13-23:15
*Description: 上海电力大学计算机科学与技术学院2024年硕士研究生招生复试成绩查询及复试专业课笔试申请复核的公告（第二批）
*@author SYN
*@Date 2024/12/13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上海电力大学计算机科学与技术学院2024年硕士研究生招生复试成绩查询及复试专业课笔试申请复核的公告（第二批）</title>
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
                <div class="col-lg-12">
                    <div style="margin-top:30px">
                        <h4 style="margin-bottom: 10px;text-align: center;font-size: 22px;font-family: '微软雅黑',serif;">
                            上海电力大学计算机科学与技术学院2024年硕士研究生招生复试成绩查询及复试专业课笔试申请复核的公告（第二批）
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2024-04-15
                        </h4>
                        <div>
                            <p style="box-sizing:border-box;margin-top:0;margin-bottom:1rem;">
                                    <span style="box-sizing:border-box;color:#212529;font-family:微软雅黑, sans-serif;font-size:16px;">
                                        各位考生：
                                    </span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;margin-bottom:1rem;">
                                    <span style="box-sizing:border-box;color:#212529;font-family:微软雅黑, sans-serif;font-size:16px;">
                                        即日起可登录该网页https://yjszs.shiep.edu.cn/yjszs_xsb/查询复试成绩。
                                        （外语复试放在综合面试中，故外语复试一列所有考生均为0）
                                    </span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;margin-bottom:1rem;">
                                    <span style="box-sizing:border-box;font-weight:bolder;">
                                        <span style="box-sizing:border-box;font-family:微软雅黑, sans-serif;color:red;font-size:16px;">
                                            关于复试笔试成绩复核：
                                        </span>
                                    </span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;margin-bottom:1rem;">
                                    <span style="box-sizing:border-box;color:#212529;font-family:微软雅黑, sans-serif;font-size:16px;">
                                        学院已对复试笔试成绩进行了认真复核。考生如仍对复试笔试成绩有异议，可申请成绩复核。
                                        根据有关规定，成绩复核只核查考生答卷是否有漏评、加分错、登分错，不重新评阅答卷；
                                        复核结果只向考生提供所复核科目成绩总分，考生本人不得查阅答卷。
                                    </span>
                                <span style="box-sizing:border-box;color:#212529;font-family:微软雅黑, sans-serif;font-size:16px;">
                                        &nbsp;
                                    </span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;margin-bottom:1rem;">
                                    <span lang="EN-US" style="box-sizing:border-box;font-family:微软雅黑, sans-serif;
                                    color:#212529;font-size:16px;">1、复试笔试专业课申请复核：考生将本人填写并签名的
                                        《上海电力大学计算机科学与技术学院2024年硕士研究生招生复试专业课笔试成绩复核申请表》
                                        （见附件）与准考证、身份证正反面照片一起于4月15日（星期一）13:00至4月16日（星期二）
                                        发送至邮箱：ljshdl@shiep.edu.cn，邮件标题及复核申请表命名为：
                                        成绩复核+准考证号+报考专业+科目名称。学院将在收到邮件后，回复邮件确认。
                                    </span>
                                <strong style="color:#212529;font-family:微软雅黑, sans-serif;font-size:16px;">学院一律不接受现场复核和电话复核申请。</strong>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;margin-bottom:1rem;">
                                    <span style="box-sizing:border-box;color:#212529;font-family:微软雅黑, sans-serif;text-decoration-line:underline;font-size:16px;">
                                        注：提前发送或逾期发送邮件不予受理，由考生自行负责。
                                    </span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;margin-bottom:1rem;">
                                    <span lang="EN-US" style="box-sizing:border-box;font-family:微软雅黑, sans-serif;color:#212529;font-size:16px;">
                                        2、若复核确认复试笔试课成绩有误，将在4月18日前通知考生本人，复核确认复试笔试课成绩无误，则不再联系考生本人，将在学院网页上统一公布复核结果。
                                    </span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;margin-bottom:1rem;">
                                    <span style="box-sizing:border-box;font-size:20px;font-family:微软雅黑, sans-serif;color:#212529;">
                                        <img src="${pageContext.request.contextPath}/img/docx.gif" style="box-sizing:border-box;vertical-align:middle;" alt="">
                                        <a href="${pageContext.request.contextPath}/static/6f138565-f5d5-4875-918d-7173829bc333.doc"
                                           style="box-sizing:border-box;font-size:16px;">
                                            <span style="box-sizing:border-box;color:#212529;">
                                                上海电力大学计算机科学与技术学院2024硕士研究生招生复试专业课笔试成绩复核申请表.doc
                                            </span>
                                        </a>
                                    </span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;text-align:right;margin-bottom:1rem;">
                                <span style="box-sizing:border-box;color:#212529;font-family:微软雅黑, sans-serif;font-size:16px;">计算机科学与技术学院</span>
                            </p>
                            <p style="box-sizing:border-box;margin-top:0;background:white;text-align:right;margin-bottom:1rem;">
                                <span style="box-sizing:border-box;color:#212529;font-family:微软雅黑, sans-serif;font-size:16px;">2024年4月15日</span>
                            </p>
                            <p><br></p>
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
