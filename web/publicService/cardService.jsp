<%--
*ClassName: cardService
*Package: publicServices
*CreateTime: 2024/11/24-13:56
*Description: 一卡通服务
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上电一卡通管理系统</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/publicServices/cardService.css" rel="stylesheet">
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
            <div class="content-container">
                <!-- 左侧菜单 -->
                <div class="menu">
                    <form>
                        <input type="button" value="基本信息查询" onclick="showPage('basicInfo')"><br><br>
                        <input type="button" value="历史流水查询" onclick="showPage('historyQuery')"><br><br>
                        <input type="button" value="持卡人挂失" onclick="showPage('reportLoss')"><br><br>
                        <input type="button" value="修改查询密码" onclick="showPage('changePassword')">
                    </form>
                </div>

                <div class="content">
                    <!-- 基本信息查询 -->
                    <div id="basicInfo" class="page">
                        <h3>个人基本信息</h3>
                        <table>
                            <tr>
                                <td>姓名：</td>
                                <td>杨裕凯</td>
                                <td>账号：</td>
                                <td>12536</td>
                                <td rowspan="6" style="width: 120px;">
                                    <img src="${pageContext.request.contextPath}/img/wyz.jpeg"  alt="">
                                </td>
                            </tr>
                            <tr>
                                <td>性别：</td>
                                <td>男</td>
                                <td>学工号：</td>
                                <td>20221560</td>
                            </tr>
                            <tr>
                                <td>国籍：</td>
                                <td></td>
                                <td>身份类型：</td>
                                <td>本科生</td>
                            </tr>
                            <tr>
                                <td>民族：</td>
                                <td></td>
                                <td>证件类型：</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>籍贯：</td>
                                <td></td>
                                <td>证件号码：</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>政治面貌：</td>
                                <td></td>
                                <td>出生年月：</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>所属部门：</td>
                                <td colspan="4">计算机科学与技术学院-计算机科学与技术专业-2022-2022053</td>
                            </tr>
                            <tr>
                                <td>所属校区：</td>
                                <td colspan="4">上海电力大学-临港校区</td>
                            </tr>
                            <tr>
                                <td>校内地址：</td>
                                <td colspan="4"></td>
                            </tr>
                            <tr>
                                <td>电子邮箱：</td>
                                <td colspan="4"></td>
                            </tr>
                            <tr>
                                <td>卡状态：</td>
                                <td>正常</td>
                                <td>电话：</td>
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <td>余额：</td>
                                <td>66.41元（卡余额）0.00元(当前过渡余额)0.00元(上次过渡余额)</td>
                                <td>检查状态：</td>
                                <td colspan="2">正常</td>
                            </tr>
                            <tr>
                                <td>冻结状态：</td>
                                <td>正常</td>
                                <td>挂失状态：</td>
                                <td colspan="2">正常</td>
                            </tr>
                        </table>
                    </div>

                    <!-- 历史流水查询 -->
                    <div id="historyQuery" class="page">
                        <form>
                            <table>
                                <tr>
                                    <td>选择账号：</td>
                                    <td>
                                        <label>
                                            <input type="text" value="12536--正式卡" readonly>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>交易类型：</td>
                                    <td>
                                        <label>
                                            <input type="text" value="查询全部" readonly>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="btn-td">
                                        <input type="button" value="确定">
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>

                    <!-- 持卡人挂失 -->
                    <div id="reportLoss" class="page">
                        <form>
                            <table>
                                <tr>
                                    <td>选择账号：</td>
                                    <td>
                                        <label>
                                            <input type="text" value="12536--正式卡" readonly>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>查询密码：</td>
                                    <td>
                                        <label>
                                            <input type="password">
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="btn-td">
                                        <input type="button" value="挂失">
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>

                    <!-- 修改查询密码 -->
                    <div id="changePassword" class="page">
                        <form>
                            <table>
                                <tr>
                                    <td>选择账号：</td>
                                    <td>
                                        <label>
                                            <input type="text" value="12536--正式卡" readonly>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>旧查询密码：</td>
                                    <td>
                                        <label>
                                            <input type="password">
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>新查询密码：</td>
                                    <td>
                                        <label>
                                            <input type="password">
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>新查询密码确认：</td>
                                    <td>
                                        <label>
                                            <input type="password">
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="btn-td">
                                        <input type="button" value="确定">
                                    </td>
                                </tr>
                            </table>
                        </form>
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
<script>
    function showPage(pageId) {
        // 隐藏所有页面
        const pages = document.getElementsByClassName('page');
        for(let i = 0; i < pages.length; i++) {
            pages[i].style.display = 'none';
        }
        // 显示选中的页面
        document.getElementById(pageId).style.display = 'block';
    }
</script>
</body>
</html>
