<%--
*ClassName: collegeProfile
*Package: collegeProfile
*CreateTime: 2024/11/24-15:59
*Description: 学院简介
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
                            计算机科学与技术学院简介
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2024-01-01
                        </h4>
                        <div id="news-content">
                            <div class="wp_articleContent">
                                <p class="MsoNormal"
                                   style="text-indent:32px;mso-char-indent-count:2.0;line-height:150%">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        计算机科学与技术学院现设有计算机科学与技术（含卓越班）、软件工程、信息安全、数据科学与大数据技术等本
                                        科专业，拥有计算机科学与技术一级学科硕士学位点和计算机技术、人工智能、大数据技术与工程等三个方向的专业
                                        型硕士学位点；拥有“电力企业信息化与决策支持”上海市重点学科（参与）、“智能电网技术与工程”上海市教委重
                                        点学科；“计算机科学与技术”上海市人才高地、计算机科学与技术
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">(</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">电力企业信息化</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">)</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        国家“卓越工程师教育计划”本科专业、上海市创新创业教育实验基地以及中央与地方共建实验室等。
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">2019</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        年，计算机科学与技术学院入选上海市“课程思政重点改革领航学院”。软件工程专业完成上海市属高校应用型本科
                                        试点专业建设，软件工程和信息安全专业入选上海市一流本科专业建设点，计算机科学与技术专业入选国家级一流本
                                        科专业建设点。信息安全专业通过国际
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">ASIIN</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">认证。</span>
                                </p>
                                <p class="MsoNormal" style="text-indent:32px;mso-char-indent-count:2.0;line-height:150%">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        学院拥有一支年富力强、学历层次高、发展后劲足的师资队伍，共有教师
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">60</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        余人，其中上海市学术带头人
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">(</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">青年</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">)1</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        人，上海市“东方学者”
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">1</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        人、入选上海市“曙光计划”
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">1</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">人、“启明星计划”</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">2</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">人、“晨光计划”</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">2</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">人、“浦江计划”</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">1</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">人</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">;</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">教授</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">10</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">人、副教授</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">25</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        人，有博士学位教师35
                                    </span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        人，多位年轻教师先后获评上海市教学能手、上海市教育系统三八红旗手等称号。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-indent:32px;mso-char-indent-count:2.0;line-height:150%">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        学院具有较强的科研实力，目前承担着
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">60</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        余项国家自然科学基金项目、教育部项目、上海市科委重点项目、上海市教委创新行动计划项目和电力企业委托
                                        科研项目，近三年科研经费
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">2000</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        余万元。每年在国内外重要的学术期刊和学术会议上发表论文
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">100</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">多篇，其中被</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">SCI</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">、</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">EI</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">和</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">ISTP</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">收录论文约</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">80</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        篇。近三年获省部级科技进步奖、国家发明专利和实用新型专利多项。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-indent:32px;mso-char-indent-count:2.0;line-height:150%">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        学院积极推进与国内外同行的学术交流和合作。近几年，学院举办了
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">4</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">次国际学术会议、</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">10</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">余次上海市专委会会议</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">;</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        先后邀请海外知名学者来学院讲学
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">30</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">余人次，选派近</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">10</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        名骨干教师去国外著名高校访问或进修，合作发表学术论文
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">10</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        余篇，加强了与国内外同行的合作与交流。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-indent:32px;mso-char-indent-count:2.0;line-height:150%">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        学院坚持走产学研结合的办学之路，积极推动大学生科技创新计划和平台的建设。计算机科学与技术
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">(</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">电力企业信息化</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">)</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        专业方向作为国家首批实施的“卓越工程师教育培养计划”本科专业，正在按新的教学模式和方案培养具有电力
                                        知识背景的计算机技术应用型人才。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-indent:32px;mso-char-indent-count:2.0;line-height:150%">
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">2019</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        年起，学院与上海临港经济发展
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">(</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">集团</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">)</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">有限公司共建上海市“上电</span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">-</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">
                                        临港”人工智能现代产业学院，开启了校企深度合作培养高水平应用型人才的新模式。近年来，学院获得多项上
                                        海市教学成果奖和精品课程，获上海市青年教师讲课比赛一等奖，人才培养质量不断提高，学生就业前景良好，
                                        近三年学生就业率均在
                                    </span>
                                    <span lang="EN-US" style="line-height:150%;font-size:20px;">94%</span>
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:20px;">以上。</span>
                                </p>
                                <p class="MsoNormal" style="line-height:150%">
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

