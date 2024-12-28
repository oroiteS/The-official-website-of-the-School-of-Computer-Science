<%--
*ClassName: login
*Package: None(web)
*CreateTime: 2024/11/27-16:47
*Description: 首页
*@author SYN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
        }

        input,
        button {
            background: transparent;
            border: 0;
            outline: none;
        }

        body {
            height: 100vh;
            background: linear-gradient(#141e30, #243b55);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 16px;
            color: #03e9f4;
        }

        .loginBox {
            width: 500px;
            height: 450px;
            background-color: #0c1622;
            margin: 100px auto;
            border-radius: 10px;
            box-shadow: 0 15px 25px 0 rgba(0, 0, 0, .6);
            padding: 40px;
            box-sizing: border-box;
        }

        h2 {
            text-align: center;
            color: aliceblue;
            /*margin-bottom: 30px;*/
            font-family: 'Courier New', Courier, monospace;
        }

        h3{
            text-align: center;
            color: aliceblue;
            margin-bottom: 30px;
            font-family: 'Courier New', Courier, monospace;
        }

        .item {
            height: 40px;
            border-bottom: 1px solid #fff;
            margin-bottom: 40px;
            position: relative;
        }

        .item input {
            width: 100%;
            height: 100%;
            color: #fff;
            padding-top: 20px;
            box-sizing: border-box;
        }

        .item input:focus+label,
        .item input:valid+label {
            top: 0;
            font-size: 2px;
        }

        #verificationCode:focus+label,
        #verificationCode:valid+label{
            top: 0;
            font-size: 2px;
        }

        .item label {
            position: absolute;
            left: 0;
            top: 12px;
            transition: all 0.5s linear;
        }

        .btn {
            padding: 10px 20px;
            margin-top: 30px;
            color: #03e9f4;
            position: relative;
            overflow: hidden;
            text-transform: uppercase;
            letter-spacing: 2px;
            left: 35%;
        }

        .btn:hover {
            border-radius: 5px;
            color: #fff;
            background: #03e9f4;
            box-shadow: 0 0 5px 0 #03e9f4,
            0 0 25px 0 #03e9f4,
            0 0 50px 0 #03e9f4,
            0 0 100px 0 #03e9f4;
            transition: all 1s linear;
        }

        .btn>span {
            position: absolute;
        }

        .btn>span:nth-child(1) {
            width: 100%;
            height: 12px;
            background: -webkit-linear-gradient(to top, transparent, #03e9f4);
            left: -100%;
            top: 0;
            animation: line1 1s linear infinite;
        }

        @keyframes line1 {

            50%,
            100% {
                left: 100%;
            }
        }

        .btn>span:nth-child(2) {
            width: 2px;
            height: 100%;
            background: -webkit-linear-gradient(to top, transparent, #03e9f4);
            right: 0;
            top: -100%;
            animation: line2 1s 0.25s linear infinite;
        }

        @keyframes line2 {

            50%,
            100% {
                top: 100%;
            }
        }

        .btn>span:nth-child(3) {
            width: 100%;
            height: 2px;
            background: -webkit-linear-gradient(to top, transparent, #03e9f4);
            left: 100%;
            bottom: 0;
            animation: line3 1s 0.75s linear infinite;
        }

        @keyframes line3 {

            50%,
            100% {
                left: -100%;
            }
        }

        .btn>span:nth-child(4) {
            width: 2px;
            height: 100%;
            background: -webkit-linear-gradient(to top, transparent, #03e9f4);
            left: 0;
            top: 100%;
            animation: line4 1s 1s linear infinite;
        }

        @keyframes line4 {
            50%,
            100% {
                top: -100%;
            }
        }

    </style>
</head>
<body>
<div class="loginBox">
    <h2>上海电力大学</h2>
    <h3>计算机科学与技术学院</h3>
    <form action="vCodeValidateServlet" method="post">
        <div class="item">
            <input name="userId" type="text" id="userId" required>
            <label for="userId">账&nbsp;号</label>
        </div>
        <div class="item">
            <input name="password" type="password" id="password" required>
            <label for="password">密&nbsp;码</label>
        </div>
        <div class="item">
            <div class="input-img-wrapper" style="display: flex;align-content: center">
                <input name="verificationCode" type="password" id="verificationCode" required>
                <label for="verificationCode">验证码</label>
                <img style="border: 0;" src="${pageContext.request.contextPath}/verificationCode" alt="验证码">
            </div>
        </div>
        <button class="btn">登&nbsp;录
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </button>
    </form>
</div>
</body>
</html>

