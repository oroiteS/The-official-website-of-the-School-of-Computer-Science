<%--
*ClassName: bookLending
*Package: publicServices
*CreateTime: 2024/11/24-13:57
*Description: 图书借阅
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>上海电力大学计算机学院图书借阅系统</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet">
    <style>
        /* content区域的样式 */
        .content {
            margin-top: 100px;  /* 与header高度对应 */
            width: 100%;
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
            padding: 20px;
            min-height: calc(100vh - 260px); /* 100vh减去header和footer的高度 */
            display: flex;
            position: relative;
        }

        /* 侧边栏样式 */
        .sidebar {
            width: 200px;
            background-color: #f5f5f5;
            padding: 20px;
            position: sticky;
            top: 120px; /* header高度+间距 */
            height: fit-content;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .sidebar ul li {
            margin-bottom: 10px;
        }

        .sidebar ul li a {
            display: block;
            padding: 10px 15px;
            color: #333;
            text-decoration: none;
            background-color: #fff;
            border-radius: 4px;
            transition: all 0.3s ease;
            border: 1px solid #e5e5e5;
        }

        .sidebar ul li a:hover {
            background: linear-gradient(to right, rgb(21, 153, 87), rgb(21, 87, 153));
            color: #fff;
            border-color: transparent;
        }

        /* 主要内容区域样式 */
        .main-content {
            flex: 1;
            padding: 0 30px;
            margin-left: 20px;
            background-color: #fff;
            border-radius: 4px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }

        .main-content h2 {
            color: #333;
            padding-bottom: 15px;
            margin-bottom: 20px;
            border-bottom: 2px solid rgb(21, 153, 87);
        }

        .rules {
            list-style: decimal;
            padding-left: 20px;
        }

        .rules li {
            margin-bottom: 15px;
            line-height: 1.6;
            color: #444;
            padding: 5px 0;
        }
    </style>
</head>
<body>
<header id="header" style="position:fixed;top:0;left:0;width:100%;z-index:97;background:linear-gradient(to left, rgb(21, 153, 87), rgb(21, 87, 153));height:100px">
    <div class="header-container">
        <a href="#" class="logo d-flex align-items-center">
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
                        <span style="color:white;font-size:18px;font-weight:bolder">资讯信息</span>
                    </a>
                    <ul>
                        <li><a href="#">最新公告</a></li>
                        <li><a href="#">图书资讯</a></li>
                        <li><a href="#">活动信息</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">读者指南</span>
                    </a>
                    <ul>
                        <li><a href="#">借阅规则</a></li>
                        <li><a href="#">开放时间</a></li>
                        <li><a href="#">常见问题</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">资源服务</span>
                    </a>
                    <ul>
                        <li><a href="#">电子资源</a></li>
                        <li><a href="#">馆藏目录</a></li>
                        <li><a href="#">新书通报</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">特色空间</span>
                    </a>
                    <ul>
                        <li><a href="#">创新空间</a></li>
                        <li><a href="#">学习空间</a></li>
                        <li><a href="#">研讨空间</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)">
                        <span style="color:white;font-size:18px;font-weight:bolder">我的图书馆</span>
                    </a>
                    <ul>
                        <li><a href="#">借阅历史</a></li>
                        <li><a href="#">个人信息</a></li>
                        <li><a href="#">密码修改</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>
<main>
    <div class="content">
        <div class="sidebar">
            <ul>
                <li><a href="javascript:void(0)">阅览图章</a></li>
                <li><a href="javascript:void(0)">馆区服务</a></li>
                <li><a href="javascript:void(0)">入馆须知</a></li>
                <li><a href="javascript:void(0)">办证须知</a></li>
                <li><a href="javascript:void(0)">借阅须知</a></li>
            </ul>
        </div>

        <div class="main-content">
            <h2>借阅须知</h2>
            <ul class="rules">
                <li>凭本人读者卡/第二代身份证在各阅览室阅览书刊资料，在阅览室、借阅区门口验证处通过读卡机确认证件的功能有效后，即可入内。</li>
                <li>阅览室的书刊资料仅供室内阅览。</li>
                <li>阅览开架图书，每次限取四册；阅览开架报刊，每次限报刊1种/1年，阅后放在指定地点，请勿自行归架。</li>
                <li>阅览图书书刊资料，须遵章爱护，文明工作人员提醒，阅毕归还，请勿隐匿私藏。</li>
                <li>阅览室书刊资料，原在本馆联机公共目录查询系统《OPAC》(或卡片目录)中检索书目并发送请求（或填交索书单），
                    由工作人员提取书刊资料。书刊出纳台而当日不取书刊者原交纳递送金20.00元/册，基藏库书刊原当日归还，逾期归还须交纳递送金5元/册/日。
                </li>
                <li>复制书刊资料，须遵守著作权法律法规并承诺遵守著作权法，在指定地点办理复制手续，复制后请立即归还。</li>
                <li>阅览室的书刊资料未经许可，不得擅自携出室外，私自将书刊资料夹带出室者，按偷盗行为处理。</li>
            </ul>
        </div>
    </div>
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
