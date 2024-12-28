<%--
*ClassName: rulesList
*Package: graduateStudent
*CreateTime: 2024/11/24-13:54
*Description: 规章制度
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
                            <a class="column-name" title="研究生招生" href="studentEnrollmentList.jsp">
                                <i class="bi"></i>
                                <span>研究生招生</span>
                            </a>
                        </li>
                        <li>
                            <a class="column-name" title="专业介绍" href="professionalIntroductionList.jsp">
                                <i class="bi"></i>
                                <span>专业介绍</span>
                            </a>
                        </li>
                        <li>
                            <a class="column-name" title="规章制度" href="rulesList.jsp">
                                <i class="bi"></i>
                                <span>规章制度</span>
                            </a>
                        </li>
                        <li>
                            <a class="column-name" title="导师名录" href="tutorsDirectoryList.jsp">
                                <i class="bi"></i>
                                <span>导师名录</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-10">
                    <br>
                    <div style="margin:5px 10px 5px 0;">
                        <span style="font-size: 16px; font-weight: bold;">
                            <i style="font-size:14px;color:green" class="bi">&nbsp;&nbsp;</i>
                            <a href="./rules/rule1.jsp" style="color: black;text-decoration: none;">
                                SCI期刊、CCF推荐国际学术会议及期刊目录（2022年版）/北大中文...
                            </a>
                        </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2022-03-16</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国计算机学会推荐国际学术会议和期刊目录-2022.pdfSCI论文分区及影响
                            因子查询网址（以最新升级版为准）https://www.letpub.com.cn/index.php?page=journalapp&nbsp; &nbsp;
                            &nbsp;&nbsp; &nbsp;中文期刊收录查询网址：https://navi.cnki.net/knavi/journals/search?q=%E5%AE%9
                            E%E9%AA%8C%E5%AE%A4%E7%A0%94%E7%A9%B6%E4%B8%8E%E6%8E%A2%E7%B4%A2
                        </p>
                    </div>
                    <hr/>
                    <div style="margin:5px 10px 5px 0;">
                        <span style="font-size: 16px; font-weight: bold;">
                            <i style="font-size:14px;color:green" class="bi">&nbsp;&nbsp;</i>
                            <a href="./rules/rule2.jsp" style="color: black;text-decoration: none;">
                                上海电力大学计算机科学与技术学院研究生学位论文中期检查及校内...
                            </a>
                        </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2021-04-22</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据《中华人民共和国学位条例》、《中华人民共和国学位条例暂行实施办法》
                            和《上海电力大学研究生学位论文答辩及学位申请的规定》，结合计算机学院研究生学位论文完成具体情况，特对计算机学院
                            研究生学位论文中期检查及校内预审工作制定以下规定。一、研究生学位论文研究生学位论文工作是研究生培养的重要组成部分，
                            所有研究生必须在导师指导下完成一篇达到学位要求的学位论文。硕士学位论文要反映硕士研究生在本学科领域研究中达...
                        </p>
                    </div>
                    <hr/>
                    <div style="margin:5px 10px 5px 0;">
                        <span style="font-size: 16px; font-weight: bold;">
                            <i style="font-size:14px;color:green" class="bi">&nbsp;&nbsp;</i>
                            <a href="./rules/rule3.jsp" style="color: black;text-decoration: none;">
                                上海电力大学计算机科学与技术学院 关于在读硕士生更换导师的规...
                            </a>
                        </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2020-06-04</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 根据教育部《关于进一步规范和加强研究生培养
                            管理的通知》(教研厅〔2019〕1号)，《教育部关于全面落实研究生导师立德树人职责的意见》（教研〔2018〕1号）精神，
                            为更好地推进我院建立以科学研究为主导的导师负责制和资助制的研究生培养机制改革，维持正常的教学和科学研究秩序，
                            保证研究生的培养质量，特对研究生更换导师作出相关规定（以下计算机科学与技术学院研究生学位委员会简称学位委员会）：
                            一、更换导...
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