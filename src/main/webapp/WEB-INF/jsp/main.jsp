<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCType html>
<html>
    <title>Shop Floor Control System V2.4</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">

<head>
    <style>
        body {margin: 0;}
        header {width: 100%;height: 26px;background-color: #ababab;}
        nav {width:137px;height:calc(100vh - 26px);float:left;background-color: #b0c4de;}
        #drag{
            float: left;
            width: 6px;
            height:calc(100vh - 26px);
            background-color: #2e8b57;
            cursor: e-resize;
        }
        iframe{width:calc(100% - 143px); height: calc(100vh - 26px);border: none;display: block;}

        .menu {margin: 0px;width: 100%;height: 26px;}
        .menu ul {margin: 0px;padding: 0px;}
        .menu ul li{
            position:relative;
            float:left;
            list-style:none;
            padding:3px;
            font-size:14px;
            width:auto;
            text-align: center;
            margin:0px;
            background:#ababab;

        }

        .menu a {text-decoration: none;text-decoration-color: #000000;margin: auto;}
        .menu a:link{color: #000000;}

        .menu ul li ul{
            display:none;
            margin:4px 0 0 2px;
            border:1px solid;
            border-color: #c2e0ff;
        }

        .menu ul li:hover ul{
            display:block;
            position: absolute;
            left: -2px;
            top: 21px;
        }

        .menu ul li:hover ul li{
            background:#fdfdfd;
            width:180px;
        }

        .menu ul li:hover ul li:hover{
            background:#c2e0ff;
        }

        .menu ul li:hover{
            background:#c2e0ff;
        }

        .menu a:visited{
            color: #000000;
        }

        #list_1{
            margin: 0;
            padding: 0;
            width: 137px;
            border: none;
            border-top: #ffffff solid 1px;
            font-size:14px;
            color: #15428b;
            text-align: left;
            background-image: url("img/backpic.png");
            outline: none;
        }
        nav ul{
            height: 186px;
            background-color: #a9a9a9;
            margin: 0;
            padding: 15px 0 0 12px;
            border:#ffffff solid 1px;
            border-top: #ffffff solid 2px;
            font-size: 14px;
        }
        nav a{
            white-space:nowrap;
            text-decoration-color: #0000ff;
        }
        nav a:link{
            color: #0000ff;
        }
        nav a:hover{
            color: #0000ff;
        }
        nav a:visited{
            color: #0000ff;
        }
        nav a:active{
            color: red;
        }
        nav ul li {
            list-style: none;
            padding: 3px 0px 3px 0px;
        }

    </style>

    <script type="text/javascript" src="js/bootstrap/jquery-2.0.2.min.js"></script>

    <script type="text/javascript">

        function list_1(list_1) {
            var list_menu = document.getElementById("list_menu");
            if(list_menu.style.display==""){
                list_1.style.backgroundImage="url(img/backpic_2.png)";
                list_menu.style.display="none";
            }else{
                list_menu.style.display="";
                list_1.style.backgroundImage="url(img/backpic.png)";
            }
        }

        $(document).on('click', 'header a', function(){
            var href = $(this).attr("name");
            if(href != null){
                $("#iframe").attr("src",href.substring(0,href.indexOf(".")));
            }
        });



    </script>

</head>

<body>

    <header>
        <div class="menu">
            <ul>
                <li>
                    <a href="#">
                        <img src="img/system.bmp"> 系统管理
                    </a>
                    <ul>
                        <li><a href="#">menu config</a></li>
                        <li><a href="#">组织管理</a></li>
                        <li><a>邮件列表</a></li>
                        <li><a>角色权限</a></li>
                        <li><a>修改密码</a></li>
                        <li><a href="loginOut">系统退出</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <img src="img/3.ico"> 基础信息维护
                    </a>
                    <ul>
                        <li><a href="#" name="childHtml/cangchuxinxi_1.html">仓储信息维护</a></li>
                        <li><a href="#" name="childHtml/cangchuxinxi_1.html">客户信息维护</a></li>
                        <li><a href="#" name="childHtml/cangchuxinxi_1.html">供应商信息维护</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">员工信息维护</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">工序信息维护</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">组织实体</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">经营实体</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">部门信息维护</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">不良录入</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <img src="img/SHENGCHAN.bmp"> 生产信息维护
                    </a>
                    <ul>
                        <li><a href="#" name="childHtml/yuangong_4.html">物料信息维护</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">XY_Data数据管理</a></li>
                        <li><a href="#" name="childHtml/yuangong_4.html">产品信息维护</a></li>
                        <li><a href="#" name="childHtml/bomxinxi_4.html">BOM信息维护</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <img src="img/PCB.gif" width="16" height="16"> 生产建模
                    </a>
                    <ul>
                        <li><a>系统属性域管理</a></li>
                        <li><a>系统值域注册</a></li>
                        <li><a>装配件维护</a></li>
                        <li><a>工序管理</a></li>
                        <li><a>维护保养执行</a></li>
                        <li><a>保养执行</a></li>
                        <li><a>工作中心注册</a></li>
                        <li><a href="#" name="childHtml/gongzuozhongxin_8.html">工作中心维护</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <img src="img/SHENGCHAN.bmp"> 生产资源管理
                    </a>
                    <ul>
                        <li><a>设备信息维护</a></li>
                        <li><a>产线信息维护</a></li>
                        <li><a>飞达信息注册</a></li>
                        <li><a>备件及特殊物料</a></li>
                        <li><a href="#" name="childHtml/shebeirizhi_5.html">设备运行日志</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <img src="img/4.bmp"> 计划管理
                    </a>
                    <ul>
                        <li><a href="#" name="childHtml/gongdanguanli_1.html">工单管理</a></li>
                        <li><a>制令单管理</a></li>
                        <li><a>UPH计划产能</a></li>
                    </ul>
                </li>

                <li>
                    <a>
                        <img src="img/receiving.bmp"> 生产设计建模
                    </a>
                    <ul>
                        <li><a>工艺管理</a></li>
                        <li><a>产线管理</a></li>
                        <li><a>不良建模</a></li>
                        <li><a>不良方案管理</a></li>
                        <li><a>工序设备关联</a></li>
                        <li><a>装配工艺管理</a></li>
                        <li><a>物料检验项信息维护</a></li>
                        <li><a>通用过站管理</a></li>
                        <li><a>Excution Packing</a></li>
                        <li><a>Excution Pallet</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <img src="img/purchase.bmp"> WMS
                    </a>
                    <ul>
                        <li><a>采购订单管理</a></li>
                        <li><a>接收任务分配</a></li>
                        <li><a>接收管理</a></li>
                        <li><a>物料注册</a></li>
                        <li><a>拆包任务管理</a></li>
                        <li><a>拆包管理</a></li>
                        <li><a>IQC检验</a></li>
                        <li><a>入库管理</a></li>
                        <li><a>备料管理</a></li>
                        <li><a>备料任务分配</a></li>
                        <li><a>备料执行</a></li>
                        <li><a>盘点管理</a></li>
                        <li><a>盘点执行</a></li>
                        <li><a>盘点平账</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <img src="img/checkstore.bmp"> QMS
                    </a>
                    <ul>
                        <li><a href="#" name="childHtml/programlist_1.html">Program List Registration</a></li>
                        <li><a>上料防错</a></li>
                        <li><a>Equipment and Material</a></li>
                        <li><a>OEE Dash Board</a></li>
                    </ul>
                </li>

                <li>
                    <a>
                        <img src="img/POManage.bmp"> Trace Report
                    </a>
                    <ul>
                        <li><a>Flow History</a></li>
                    </ul>
                </li>
            </ul>

        </div>

    </header>

    <div id="wrap">
        <nav>
            <input type="button" id="list_1" value="  追溯报表" onclick="list_1(this)"/>
            <div id="list_menu">
                <ul>
                    <li><a href="#">First Pass Yield</a></li>
                    <li><a href="#">Reset Yield</a></li>
                    <li><a href="#">UPH Report</a></li>
                    <li><a href="#">UOPH Report</a></li>
                    <li><a href="#">Top Defect Report</a></li>
                </ul>
            </div>
        </nav>

        <div id="drag">

        </div>

        <iframe id="iframe" src="/first"></iframe>
    </div>

</body>
</html>
