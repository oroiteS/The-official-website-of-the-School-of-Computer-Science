<%--
*ClassName: computerScience
*Package: undergraduateTeaching.professionalIntroduction
*CreateTime: 2024/11/25-0:16
*Description: 专业介绍·计科
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
                                <video id="video" src="${pageContext.request.contextPath}/video/csVideo.mp4"
                                       style="cursor: pointer;"></video>
                            </div>
                            <div class="wp_articleContent">
                                <p></p>
                                <p></p>
                                <p style="mso-line-height-rule:exactly;box-sizing:border-box;margin: 1rem 1rem 0;">
                                    <span style="font-size:19px;">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <strong style="font-size:19px;">
                                            <span style="font-size:21px;">
                                                (计算机科学与技术专业
                                                <span style="cursor: pointer; border-bottom: 2px dotted rgb(51, 153, 255);">
                                                    宣传片
                                                </span>
                                                )
                                            </span>
                                        </strong>
                                    </span>
                                </p>
                                <div id="tabContent1" data-find="_1"
                                     style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px">
                                    <p class="MsoNormal" style="text-indent:36px;"><span
                                            style="line-height:24px;font-size:16px;">培养目标：(包含计算机应用方向、电力企业信息化方向)本专业培养具有良好的科学素养，系统地掌握计算机科学与技术，包括计算机硬件、软件与应用的基本理论、基本知识和基本技能，从事计算机科学与技术开发与应用的工程技术人才。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:28px;"><span
                                            style="line-height:24px;font-size:16px;">本专业分为两个方向：</span><span
                                            style="line-height:24px;font-size:16px;">1</span><span
                                            style="line-height:24px;font-size:16px;">）计算机应用</span><span
                                            style="line-height:24px;font-size:16px;">&nbsp;&nbsp;2</span><span
                                            style="line-height:24px;font-size:16px;">）电力企业信息化。</span></p>
                                    <p class="MsoNormal" style="text-indent:28px;"><span
                                            style="line-height:24px;font-size:16px;">计算机应用方向着重于培养学生具有计算机软件和硬件的全面知识，并掌握计算机应用的基本方法和技能，具备解决实际问题的能力和创新能力。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:28px;"><span
                                            style="line-height:24px;font-size:16px;">电力企业信息化方向瞄准电力发、供电企业在信息化建设中对计算机科学和信息技术人才的需求，突出我院与电力企业紧密联系的优势与特色，培养既有计算机科学与技术扎实的专业理论、熟练的专业技能，又具备电力工业生产与运行的专业基础及专业技能的高级工程技术人员。本专业方向是卓越工程师试点专业方向。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:30px;"><span
                                            style="line-height:24px;font-size:16px;">培养要求：毕业生应获得以下几方面的知识和能力：</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:-24px;margin-left:52px;"><span
                                            style="line-height:24px;font-size:16px;">1．</span><span
                                            style="line-height:24px;font-size:16px;">具有较扎实的自然科学基础，较好的人文社会科学基础和外语综合能力；</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:-24px;margin-left:52px;"><span
                                            style="line-height:24px;font-size:16px;">2．</span><span
                                            style="line-height:24px;font-size:16px;">掌握计算机科学与技术的基本理论、基本知识；</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:-24px;margin-left:52px;"><span
                                            style="line-height:24px;font-size:16px;">3．</span><span
                                            style="line-height:24px;font-size:16px;">掌握计算机系统分析和设计的基本方法；</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:-24px;margin-left:52px;"><span
                                            style="line-height:24px;font-size:16px;">4．</span><span
                                            style="line-height:24px;font-size:16px;">具有研究和开发计算机软件、硬件的基本能力；</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:-24px;margin-left:52px;"><span
                                            style="line-height:24px;font-size:16px;">5．</span><span
                                            style="line-height:24px;font-size:16px;">了解计算机与科学的发展动态；</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:-24px;margin-left:52px;"><span
                                            style="line-height:24px;font-size:16px;">6．</span><span
                                            style="line-height:24px;font-size:16px;">掌握文献检索、资料查询的基本方法，具有较强的自学能力，能适应计算机科学迅速发展的需求。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:-24px;margin-left:52px;"><span
                                            style="line-height:24px;font-size:16px;">7．</span><span
                                            style="line-height:24px;font-size:16px;">熟悉电力企业的生产、运行与管理。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:30px;"><span
                                            style="line-height:24px;font-size:16px;">本专业的主要课程：计算机应用基础、电路原理、模拟电子技术、数字电子技术、高级程序设计、离散数学、计算机组成原理、汇编语言、数据结构、操作系统原理、数据库原理、计算机网络、微机原理及接口技术等。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:28px;"><span
                                            style="line-height:24px;font-size:16px;">学生继续深造的方向：计算机应用技术、软件工程、信息安全工程、网络工程以及与计算机应用技术相关的其它所有学科和专业。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:28px;"><span
                                            style="line-height:24px;font-size:16px;">师资队伍：经过多年的建设，计算机科学与技术专业拥有一支结构合理、教学科研素养都教高的师资队伍，目前教师队伍中具有高级职称的教师近</span><span
                                            style="line-height:24px;font-size:16px;">20</span><span
                                            style="line-height:24px;font-size:16px;">人，具有博士学位的教师</span><span
                                            style="line-height:24px;font-size:16px;">16</span><span
                                            style="line-height:24px;font-size:16px;">人。拥有上海市重点学科“电力企业信息化与决策支持”。近年来，本专业承担了一批省部级的科研项目，取得了丰硕的科研成果。</span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:28px;"><span
                                            style="line-height:24px;font-size:16px;">学生就业情况：计算机科学与技术专业从</span><span
                                            style="line-height:24px;font-size:16px;">1992</span><span
                                            style="line-height:24px;font-size:16px;">年组建以来，培养了大量的分布在各行各业的毕业生，服务于国民经济、国防建设、社会发展的各行各业。计算机科学与技术专业学生的就业渠道非常广泛，本专业近</span><span
                                            style="line-height:24px;font-size:16px;">3</span><span
                                            style="line-height:24px;font-size:16px;">年的就业率都在</span><span
                                            style="line-height:24px;font-size:16px;">95%</span><span
                                            style="line-height:24px;font-size:16px;">左右。</span></p>
                                    <p class="MsoNormal" style="text-indent:28px;">&nbsp;&nbsp;</p></div>
                                <div id="tabContent4" data-find="_7"
                                     style="color:#222222;font-family:arial, 宋体, helvetica, sans-serif;font-size:12px;">
                                    <p style="line-height:18px;"><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">1.</span></strong><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">培养目标</span></strong>
                                    </p>
                                    <p style="text-indent:32px;line-height:18px;"><span
                                            style="font-size:16px;line-height:24px;color:black;">本专业培养掌握计算机网络相关专业基础理论知识和基本技能，并获得网络工程师的基本训练且兼具创新精神，有较强的自学能力和工程实践能力，能够从事计算机网络系统开发、设计、部署、实施、运维和管理，掌握电力信息网络建设技能的高级工程技术人才。</span>
                                    </p>
                                    <p style="line-height:18px;"><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">2.</span></strong><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">专业特色</span></strong>
                                    </p>
                                    <p style="text-indent:32px;line-height:18px;"><span
                                            style="font-size:16px;line-height:24px;color:black;">本专业针对智能电网和电力信息化建设中对网络工程技术人才的需求，通过完善的创新创业人才培养体系，培养既有计算机网络专业基础和专业技能，又能适应电力信息化发展需要、理论基础扎实、实践能力强、创新创业能力强的优秀网络工程技术人才。</span>
                                    </p>
                                    <p style="line-height:18px;"><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">3.</span></strong><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">主干课程</span></strong>
                                    </p>
                                    <p style="text-indent:32px;line-height:18px;"><span
                                            style="font-size:16px;line-height:24px;color:black;">计算机组成原理、面向对象程序设计、数据库原理、计算机网络、网络协议分析与编程、计算机网络工程、华为</span><span
                                            style="font-size:16px;line-height:24px;color:black;">/</span><span
                                            style="font-size:16px;line-height:24px;color:black;">思科认证网络工程师、网络攻击与防御、网络测试与评价等。</span>
                                    </p>
                                    <p style="line-height:18px;"><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">4.</span></strong><strong><span
                                            style="font-size:16px;line-height:24px;color:black;">毕业生就业</span></strong>
                                    </p>
                                    <p style="text-indent:32px;line-height:18px;"><span
                                            style="font-size:16px;line-height:24px;color:black;">本专业毕业生就业面宽、就业前景可观，能够在网络通信类科研院所、政府机构、银行、电力企业、计算机网络公司、通信公司等各类企事业单位从事计算机网络的科学研究、系统设计、系统防护、系统管理与维护等工作。</span>
                                    </p></div>
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
<script src="${pageContext.request.contextPath}/js/undergraduateTeaching/video.js"></script>
</body>
</html>

