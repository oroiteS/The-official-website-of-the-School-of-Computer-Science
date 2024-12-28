<%--
*ClassName: professionalIntroduction
*Package: undergraduateTeaching
*CreateTime: 2024/11/24-13:48
*Description: 专业介绍
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
                            <a class="column-name" title="专业介绍" href="professionalIntroductionList.jsp">
                                <i class="bi"></i>
                                <span>专业介绍</span>
                            </a>
                        </li>
                        <li>
                            <a class="column-name" title="教学成果" href="teachingAchievementList.jsp">
                                <i class="bi"></i>
                                <span>教学成果</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-10">
                    <br>
                    <div style="margin:5px 10px 5px 0;">
                            <span style="font-size: 16px; font-weight: bold;">
                                <i style="font-size:14px;color:green"  class="bi">&nbsp;&nbsp;</i>
                                <a href="./professionalIntroduction/computerScience.jsp" style="color: black;text-decoration: none;">
                                    计算机科学与技术专业介绍
                                </a>
                            </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2024-09-09</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(计算机科学与技术专业宣传片)培养目标：
                            (包含计算机应用方向、电力企业信息化方向)本专业培养具有良好的科学素养，系统地掌握计算...
                        </p>
                    </div>
                    <hr/>
                    <div style="margin:5px 10px 5px 0;">
                            <span style="font-size: 16px; font-weight: bold;">
                                <i style="font-size:14px;color:green" class="bi">&nbsp;&nbsp;</i>
                                <a href="./professionalIntroduction/dataScience.jsp" style="color: black;text-decoration: none;">
                                    数据科学与大数据技术专业介绍
                                </a>
                            </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2024-01-04</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px" >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(数据科学与大数据技术专业宣传片)&nbsp;培养目标&nbsp;
                            &nbsp;&nbsp;本专业适应经济社会和国家能源电力发展战略新要求和新需求，...
                        </p>
                    </div>
                    <hr/>
                    <div style="margin:5px 10px 5px 0;">
                            <span style="font-size: 16px; font-weight: bold;">
                                <i style="font-size:14px;color:green" class="bi">&nbsp;&nbsp;</i>
                                <a href="./professionalIntroduction/softwareEngineering.jsp" style="color: black;text-decoration: none;">
                                    软件工程专业介绍
                                </a>
                            </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2023-01-04</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;软件工程专业介绍1、培养目标以国民经济和社会信息化需求为导向，
                            面向软件产业，以构思、设计、实施和运行实际工程为工程教育背景环境，培养掌握扎实的计算机基础理论知识；
                            能综合运用专业知识分析和解决实际软件工程问题，具有软件产业实践经验，适应现代化工程团队、新产品和新系统开发需求
                            ；具有较强的创新创业能力、较强的工程实践能力和团队协作能力、德智体全面发展的有国际竞争力的高层次、应用型、
                            复合型软件工程技术。本...
                        </p>
                    </div>
                    <hr/>
                    <div style="margin:5px 10px 5px 0;">
                            <span style="font-size: 16px; font-weight: bold;">
                                <i style="font-size:14px;color:green" class="bi">&nbsp;&nbsp;</i>
                                <a href="./professionalIntroduction/informationSecurity.jsp" style="color: black;text-decoration: none;">
                                    信息安全专业介绍
                                </a>
                            </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2022-01-05</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.培养目标本专业培养掌握该领域基本理论、基本技术和应用知识，
                            具备科学研究、技术开发和应用服务工作能力的信息安全科技人才，能够从事信息安全、信息科学、信息技术及其他相关
                            领域的信息安全研究、技术开发和应用服务等工作，适应电力、政府机关、科研、企事业单位等多方面需求的高级应用型
                            专门人才。2.专业特色以电力信息安全为主线，以电力应用为背景，系统地研究电力系统和电力网络中的信息安全问题，
                            侧重培养与锻炼学生在电...
                        </p>
                    </div>
                    <hr/>
                    <div style="margin:5px 10px 5px 0;">
                            <span style="font-size: 16px; font-weight: bold;">
                                <i style="font-size:14px;color:green" class="bi">&nbsp;&nbsp;</i>
                                <a href="./professionalIntroduction/networkEngineering.jsp" style="color: black;text-decoration: none;">
                                    网络工程专业介绍
                                </a>
                            </span>
                        <span style="float:right;padding-right:0;color:gray;font-size: 14px;">2018-06-20</span>
                        <br>
                        <p style="margin-top:14px;color:gray;font-size:13px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.培养目标本专业培养掌握计算机网络相关专业基础理论知识和基本技能
                            ，并获得网络工程师的基本训练且兼具创新精神，有较强的自学能力和工程实践能力，能够从事计算机网络系统开发、
                            设计、部署、实施、运维和管理，掌握电力信息网络建设技能的高级工程技术人才。2.专业特色本专业针对智能电网和
                            电力信息化建设中对网络工程技术人才的需求，通过完善的创新创业人才培养体系，培养既有计算机网络专业基础和专业
                            技能，又能适应电力信息...
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

