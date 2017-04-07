<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shop Floor Control System V2.4</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">

    <style>
        html,body {height:100%; *overflow:hidden; /* 消除IE7下的横向滚动条 */}
        body {margin:0; padding:0; font-size:16px; text-align:center; color:#000; font-weight: bold;}
        .top ,.main ,.foot {width:100%;}
        .top {background: #f4f4f4; height:80px;}
        .main {background: #ffffff; height:auto;}
        .foot {background:#f4f4f4; bottom:0; height:100px;}
        .logo {float: left;margin: 10px 30px;}
        .login {
            margin: 240px auto 280px auto;
            border:solid 1px #ccc;
            width: 534px;
            height: 234px;
            background: #fffafa;
        }
        .img {float: left;margin: 40px 30px 50px 40px;}
        input {margin:10px;}
        .loginForm {margin: 25px 0px 0px 0px;}
        input{width: 267px;height: 20px;font-size:16px;font-weight: bold;}
        .input1 {width: 131px;height: 28px;background-color: #66cdaa;border: #000000 1px solid;font-size:16px;}
        .input2 {width: 131px;height: 28px;background-color: #5bb899;border: #000000 1px solid;font-size:16px;}

    </style>

</head>
<body>

<div class="top">
    <div class="logo">
        <img src="img/logo-int.png">
    </div>
</div>

<div class="main">

    <div class="login">
        <img src="img/DMLog.jpg"/>
            <span class="img">
                <img src="img/team-logo.png" width="64" height="64">
            </span>

            <form action="/login" class="loginForm" method="post">
                <span>
                    用户ID <input type="text" name="OperationID" placeholder="请输入用户ID" autofocus required/><br>
                </span>

                <span>
                    &nbsp;&nbsp;&nbsp;&nbsp;密码 <input type="password"  name="PassWord" placeholder="请输入密码" required/><br>
                </span>
                <input class="input1" type="submit" value="登录" onmouseover="this.className='input2'" onmouseout="this.className='input1'" />
                <input class="input1" type="button" value="取消" onmouseover="this.className='input2'" onmouseout="this.className='input1'" />
            </form>
    </div>
</div>


<div class="foot"></div>

</body>
</html>