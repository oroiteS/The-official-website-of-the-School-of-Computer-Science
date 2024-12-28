<%--
*ClassName: rule3
*Package: graduateStudent.rules
*CreateTime: 2024/11/25-0:55
*Description: 规章制度·上海电力大学计算机科学与技术学院 关于在读硕士生更换导师的规定
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
                            上海电力大学计算机科学与技术学院 关于在读硕士生更换导师的规定
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2020-06-04
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <p style="text-align:justify;line-height:34px;">
                                    &nbsp; &nbsp;&nbsp;
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        <span style="font-family:宋体,serif;">
                                            根据教育部《关于进一步规范和加强研究生培养管理的通知》
                                        </span>
                                        (教研厅〔2019〕1号)，《教育部关于全面落实研究生导师立德树人职责的意见》（教研〔2018〕1号）
                                        精神，为更好地推进我院建立以科学研究为主导的导师负责制和资助制的研究生培养机制改革，维持正常的教学
                                        和科学研究秩序，保证研究生的培养质量，特对研究生更换导师作出相关规定（以下计算机科学与技术学院研究
                                        生学位委员会简称学位委员会）：
                                    </span>
                                </p>
                                <p style="line-height:150%;">
                                    <strong>
                                        <span style="line-height:150%;font-family:宋体,serif;font-size:16px;
                                        font-weight:bold;">
                                            一、更换导师的原则
                                        </span>
                                    </strong>
                                    <strong></strong>
                                </p>
                                <p style="line-height:150%;">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        1、研究生更换导师原则上必须在本学科范围内。
                                    </span>
                                </p>
                                <p style="line-height:150%;">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        2、考虑到研究生学习周期，研究生二年级第二学期、以及三年级学生不得更换导师。
                                    </span>
                                </p>
                                <p style="line-height:150%;">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        3、考虑到研究生学习周期，研究生在确保能顺利完成学业的前提下，在读期间只能更换一次导师。
                                    </span>
                                </p>
                                <p style="line-height:150%;">
                                    <strong>
                                        <span style="line-height:150%;font-size:16px;font-weight:bold;font-family:宋体,serif;">
                                            二、更换导师的理由
                                        </span>
                                    </strong>
                                    <strong></strong>
                                </p>
                                <p style="line-height:150%;">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        1. 原导师退休、调离导致学业无法正常继续。
                                    </span>
                                </p>
                                <p style="line-height:150%;">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        2、因其他特殊情况需要更换导师。
                                    </span>
                                </p>
                                <p style="line-height:150%;">
                                    <strong>
                                        <span style="line-height:150%;font-family:宋体,serif;font-size:16px; font-weight:bold;">
                                            三、更换导师的程序
                                        </span>
                                    </strong>
                                    <strong></strong>
                                </p>
                                <p style="line-height:150%;">
                                    <span  style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        1、学生本人提交详细情况说明一份，格式不限，内容必须包含学生本人基本情况，更换导师详细原因说明。
                                        若与导师产生分歧，必须详细说明分歧过程及原因。提交学院科研秘书，交由学院学位委员会备案；
                                    </span>
                                </p>
                                <p style="line-height:150%;">
                                    <span style="line-height:150%;font-family:宋体,serif;font-size:16px;">
                                        2、原导师提交情况详细说明一份，格式不限，内容需包含学生基本情况，及是否同意更换导师。若与学生产生
                                        分歧，需详细说明分歧过程及原因。提交学院科研秘书，交由学院学位委员会备案；
                                    </span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">3、拟变换的新导师提交同意接受说明一份，格式不限，内容需包含学生基本情况，以及是否同意接受学生。若学生与原导师有分歧，新导师需详细说明了解的分歧过程及原因。提交学院科研秘书，交由学院学位委员会备案；</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">4、学院相关负责人与学生、原导师、新导师分别进行谈话对基本情况进行调查了解，记录谈话内容并上报学院学位委员会备案；</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">5、学院召开学位委员会进行讨论，在充分了解事实的基础上，讨论决定是否同意调换导师的决定；</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">6、学位委员会讨论通过同意调换导师的决定后，科研秘书形成决议，并盖院章，通报学院同时通知学生本人；</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">7、学生本人从研究生院网上（https://yjsc.shiep.edu.cn）下载并填写«上海电力大学硕士研究生指导教师变更表»；</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">8、学生本人正式申请，由原导师、更换后导师及学院相关负责人填写«上海电力大学硕士研究生指导教师变更表»中的审核意见；</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">9、将填写完整的«上海电力大学硕士研究生指导教师变更表»提交科研秘书报研究生院审批。</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">10、研究生院审批通过，则换导师正式生效。</span>
                                </p>
                                <p style="line-height:150%;"><strong><span
                                        style="line-height:150%;font-size:16px;font-weight:bold;font-family:宋体,serif;">四、其他规定</span></strong><strong></strong>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">1、在原导师不签署意见或不同意的情况下，学院在调查了解情况的基础上，经学院讨论，可做出是否同意调换导师的决定，报研究生院审批。</span>
                                </p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">&nbsp;</span></p>
                                <p style="line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">本规定从颁布之日起执行</span>
                                </p>
                                <p><span style="font-family:calibri,serif;font-size:14px;">&nbsp;</span></p>
                                <p><span style="font-family:calibri,serif;font-size:14px;">&nbsp;</span></p>
                                <p style="text-align:right;line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">计算机科学与技术学院</span>
                                </p>
                                <p style="text-align:right;line-height:150%;"><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">2020年</span><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">6</span><span
                                        style="line-height:150%;font-family:宋体,serif;font-size:16px;">月</span>
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



