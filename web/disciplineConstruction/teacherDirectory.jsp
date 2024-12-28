<%--
*ClassName: teacherDirectory
*Package: disciplineConstrction
*CreateTime: 2024/11/24-19:06
*Description: 教师名录
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
    <link type="text/css" href="${pageContext.request.contextPath}/css/disciplineConstruction/table.css" rel="stylesheet">
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
                            计算机科学与技术学院教师名录
                        </h4>
                        <h4 style="margin-bottom: 10px;text-align: center;font-size:14px;font-family: '微软雅黑',serif;color:darkgray">
                            发布日期：2024-04-18
                        </h4>
                        <div id="newsContent">
                            <div class="wp_articleContent">
                                <table class="pure-table">
                                    <thead>
                                    <tr>
                                        <th colspan="5" style="text-align:center;word-break:break-all;"><br></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="pure-table-odd">
                                        <td colspan="5" style="text-align:left;font-weight:bold;">教授</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;毕忠勤
                                        </td>
                                        <td>
                                            ▸&nbsp;李海明
                                        </td>
                                        <td>
                                            ▸&nbsp;田秀霞
                                        </td>
                                        <td>
                                            ▸&nbsp;王勇
                                        </td>
                                        <td>
                                            ▸&nbsp;温蜜
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;张传林
                                        </td>
                                        <td>▸&nbsp;张挺
                                        </td>
                                        <td>
                                            ▸&nbsp;范自柱
                                        </td>
                                        <td>
                                            ▸&nbsp;徐菲菲
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;栗风永
                                        </td>
                                    </tr>
                                    <tr class="pure-table-odd">
                                        <td colspan="5" style="text-align:left;font-weight:bold;">副教授</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;曹渝昆
                                        </td>
                                        <td>
                                            ▸&nbsp;陈仕兵
                                        </td>
                                        <td>
                                            ▸&nbsp;杜海舟
                                        </td>
                                        <td>
                                            ▸&nbsp;李红娇
                                        </td>
                                        <td>
                                            ▸&nbsp;李晋国
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;李婧
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;刘大明
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;刘辉
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;卢芳芳
                                        </td>
                                        <td>
                                            ▸&nbsp;彭源
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;齐俊
                                        </td>
                                        <td>
                                            ▸&nbsp;王剑云
                                        </td>
                                        <td>
                                            ▸&nbsp;王亮亮
                                        </td>
                                        <td>
                                            ▸&nbsp;王真
                                        </td>
                                        <td>
                                            ▸&nbsp;魏建华
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;魏为民
                                        </td>
                                        <td>
                                            ▸&nbsp;徐曼
                                        </td>
                                        <td>
                                            ▸&nbsp;薛梅
                                        </td>
                                        <td>
                                            ▸&nbsp;叶文珺
                                        </td>
                                        <td>
                                            ▸&nbsp;殷脂
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;张安勤
                                        </td>
                                        <td>
                                            ▸&nbsp;张凯
                                        </td>
                                        <td>
                                            ▸&nbsp;张维
                                        </td>
                                        <td>
                                            ▸&nbsp;周林
                                        </td>
                                        <td>
                                            ▸&nbsp;周平
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="1" rowspan="1" style="word-break:break-all;"><br></td>
                                        <td colspan="1" rowspan="1"><br></td>
                                        <td colspan="1" rowspan="1"><br></td>
                                        <td colspan="1" rowspan="1"><br></td>
                                        <td colspan="1" rowspan="1"><br></td>
                                    </tr>
                                    <tr class="pure-table-odd">
                                        <td colspan="5" style="text-align:left;font-weight:bold;word-break:break-all;">
                                            讲师/工程师
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ▸&nbsp;陈思远
                                        </td>
                                        <td>
                                            ▸&nbsp;陈宗民
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;李博
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;李舫
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;楼越焕
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;卢珍
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;毛志华
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;聂坤
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;齐永晓
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;任祥宝
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;孙超超
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;孙倩倩
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;唐小岚
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;王宝楠
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;王西龙
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;于晓青
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;张超
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;张伟娜
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;诸葛琼
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;李玮玮
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;李东阳
                                        </td>
                                        <td style="word-break:break-all;"><br></td>
                                        <td style="word-break:break-all;"><br></td>
                                        <td style="word-break:break-all;"><br></td>
                                        <td><br></td>
                                    </tr>
                                    <tr class="pure-table-odd">
                                        <td colspan="5" style="text-align:left;font-weight:bold;">助教/助工</td>
                                    </tr>
                                    <tr>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;韩艳芳
                                        </td>
                                        <td style="word-break:break-all;">
                                            ▸&nbsp;蒋仁志
                                        </td>
                                        <td>
                                            ▸&nbsp;陆佳
                                        </td>
                                        <td>
                                            ▸&nbsp;宋钰
                                        </td>
                                        <td>
                                            ▸&nbsp;张潇月
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="1" rowspan="1" style="word-break:break-all;">
                                            马安奕
                                        </td>
                                        <td colspan="1" rowspan="1" style="word-break:break-all;">
                                            周远航
                                        </td>
                                        <td colspan="1" rowspan="1"><br></td>
                                        <td colspan="1" rowspan="1"><br></td>
                                        <td colspan="1" rowspan="1"><br></td>
                                    </tr>
                                    </tbody>
                                </table>
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
