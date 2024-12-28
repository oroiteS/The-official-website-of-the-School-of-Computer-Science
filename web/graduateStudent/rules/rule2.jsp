<%--
*ClassName: rule2
*Package: graduateStudent.rules
*CreateTime: 2024/11/25-0:54
*Description: 规章制度·上海电力大学计算机科学与技术学院研究生学位论文中期检查及校内预审工作办法
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上海电力大学计算机科学与技术学院研究生学位论文中期检查及校内预审工作办法</title>
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
                            上海电力大学计算机科学与技术学院研究生学位论文中期检查及校内预审工作办法
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2021-04-22
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        根据《中华人民共和国学位条例》、《中华人民共和国学位条例暂行实施办法》和
                                        《上海电力大学研究生学位论文答辩及学位申请的规定》，结合计算机学院研究生学位论文完成具体情况，
                                        特对计算机学院研究生学位论文中期检查及校内预审工作制定以下规定。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <strong style="mso-bidi-font-weight:normal">
                                        <span style="font-size:16px;font-family:宋体,serif;">
                                            一、研究生学位论文
                                        </span>
                                    </strong>
                                    <strong style="mso-bidi-font-weight:normal">
                                    </strong>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        研究生学位论文工作是研究生培养的重要组成部分，所有研究生必须在导师指导下完成一篇达到学位要求的学位
                                        论文。硕士学位论文要反映硕士研究生在本学科领域研究中达到的学术水平，表明本人较好地掌握了本学科的
                                        基础理论、专门知识和基本技能，具有从事本学科或相关学科科学研究或独立担负专门技术工作的能力。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span lang="EN-US" style="font-size:16px;">1. </span>
                                    <span style="font-size:16px;font-family:宋体,serif;">学位论文包含开题报告、中期检查、
                                        论文评审与答辩等环节，开题报告一般在研二的上学期初，中期检查一般在研二的下学期末，论文评审与答辩
                                        一般在研三的下学期（申请提前答辩者除外）。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span lang="EN-US" style="font-size:16px;">2. </span>
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        要求以第一作者身份（或导师第一作者，硕士研究生第二作者）在公开出版的中文核心或以上等级期刊上至少
                                        发表（或录用）
                                    </span>
                                    <span lang="EN-US" style="font-size:16px;">1</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        篇与专业学术研究或学位论文内容相关论文（发表
                                    </span>
                                    <span lang="EN-US" style="font-size:16px;">CCF</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">列表的</span>
                                    <span lang="EN-US" style="font-size:16px;">ABC</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        类会议论文等视同符合上述标准），或者有承担导师在研横向项目的可发表
                                    </span>
                                    <span lang="EN-US" style="font-size:16px;">EI</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">特定会议（连续召开</span>
                                    <span lang="EN-US" style="font-size:16px;">10</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">届以上</span>
                                    <span lang="EN-US" style="font-size:16px;">/ACM Truc</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">图灵大会）</span>
                                    <span lang="EN-US" style="font-size:16px;">1</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">篇</span>
                                    <span lang="EN-US" style="font-size:16px;">+</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">申请专利</span>
                                    <span lang="EN-US" style="font-size:16px;">2</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        项。特殊成果可经本学院学位委员会讨论认定是否符合毕业要求。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span lang="EN-US" style="font-size:16px;">3. </span>
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        留学生、非全日制学生以及独立的研究生工作站导师名下相关学生（无对应校内导师）毕业要求遵照学校有关
                                        规定。
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <strong style="mso-bidi-font-weight:normal">
                                        <span style="font-size:16px;font-family:宋体,serif;">
                                            二、研究生中期检查要求
                                        </span>
                                    </strong>
                                    <strong style="mso-bidi-font-weight:normal"></strong>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <strong>
                                        <span style="font-size:16px;font-family:宋体,serif;">
                                            <span style="font-size:16px;font-family:宋体,serif;color:#ff0000;">
                                                研究生中期检查需至少一名学位委员会成员在场
                                            </span>
                                        </span>
                                    </strong>
                                    <span style="font-size:16px;font-family:宋体,serif;">
                                        <span style="font-size:16px;font-family:宋体,serif;color:#ff0000;">
                                        </span>
                                        ，中期答辩结论由学位委员会最终根据中期答辩情况进行合议决定。决议通过中期答辩的学生原则上必须至少
                                        达到下列三项条件之一：
                                    </span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span style="font-size:16px;font-family:宋体,serif;">（</span>
                                    <span lang="EN-US"
                                          style="font-size:16px;font-family:times new roman, serif;">1</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">）论文初稿；</span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span style="font-size:16px;font-family:宋体,serif;">（</span>
                                    <span lang="EN-US"
                                          style="font-size:16px;font-family:times new roman, serif;">2</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">）最终实验结果；</span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <span style="font-size:16px;font-family:宋体,serif;">（</span>
                                    <span lang="EN-US"
                                          style="font-size:16px;font-family:times new roman, serif;">3</span>
                                    <span style="font-size:16px;font-family:宋体,serif;">）论文投稿记录。</span>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <strong style="mso-bidi-font-weight:normal">
                                        <span style="font-size:16px;font-family:宋体,serif;">三、研究生学位论文校内预审要求</span>
                                    </strong><strong style="mso-bidi-font-weight:normal"></strong>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <strong>
                                        <span style="font-size:16px;font-family:宋体,serif;color:#ff0000;">
                                            论文预审阶段，不满足学院毕业要求的同学，原则上不得参加校内预审。
                                        </span>
                                    </strong>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;">
                                    <strong style="mso-bidi-font-weight:normal">
                                        <span style="font-size:16px;font-family:宋体,serif;">四、其他</span>
                                    </strong>
                                    <strong style="mso-bidi-font-weight:normal">
                                    </strong>
                                </p>
                                <p class="MsoNormal" style="text-align:left;text-indent:32px;mso-char-indent-count:2.0;
                                line-height:36px;mso-line-height-rule:exactly;"><span
                                        style="font-size:16px;font-family:宋体,serif;">此方案若与学校相关政策有冲突，则以学校相关政策为准，此方案由计算机科学与技术学院负责解释，自颁布之日起实施。</span>
                                </p>
                                <p class="MsoNormal"
                                   style="text-align:right;text-indent:32px;mso-char-indent-count:2.0;line-height:36px;mso-line-height-rule:exactly;">
                                    <span style="font-size:16px;font-family:宋体,serif;">计算机科学与技术学院</span></p>
                                <p class="MsoNormal"
                                   style="text-align:right;text-indent:32px;mso-char-indent-count:2.0;line-height:36px;mso-line-height-rule:exactly;">
                                    <span lang="EN-US"
                                          style="font-size:16px;font-family:times new roman, serif;">2021</span><span
                                        style="font-size:16px;font-family:宋体,serif;">年</span><span lang="EN-US"
                                                                                                      style="font-size:16px;font-family:times new roman, serif;">4</span><span
                                        style="font-size:16px;font-family:宋体,serif;">月</span><span lang="EN-US"
                                                                                                      style="font-size:16px;font-family:times new roman, serif;">20</span><span
                                        style="font-size:16px;font-family:宋体,serif;">日</span></p>
                                <p class="MsoNormal"
                                   style="text-align:right;mso-pagination:widow-orphan;"><span
                                        lang="EN-US"
                                        style="font-size:16px;font-family:times new roman, serif;">&nbsp;</span></p>
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


