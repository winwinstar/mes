<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bomxinxi</title>
    <style>
        html,body{background-color: #c0c0c0;margin: 0;padding: 0;}
        #head{height: 23px;background-color: #c4d2e0;text-align: left;font-size: 12px;}
        img{float: left;margin: 0px 2px 1px 2px;padding: 5px;}
        #head p{margin:0px 26px;padding: 4px;}
        #head2{height:60px;background-color: #b0c4de;text-align: left;margin: 0;padding: 0;}
        #head2 p{font-family:tahoma;margin:0;padding:0;font-size: 16px;font-weight: bold;color: #fff;font-style: italic;padding: 15px 0 15px 60px;}

        iframe{width:260px;height: calc(100vh - 84px);border: none;display: block;float: left;}
        #drag{
            float: left;
            width: 6px;
            height:calc(100vh - 84px);
            background-color: #a0a0a0;
            cursor: e-resize;
        }
        #content1{background-color: #808080;height: 150px;font-size: 12px;}
        #content2{background-color: #ababab;height: 350px;border:#000 1px solid;margin-bottom: 6px;}
        #content3{background-color: #dcdcdc;height: calc(100vh - 595px);border:#000 1px solid;}
        .content1_1{height: 75px;}
        .content1_1_1{padding: 6px 40px;}
        .content1_1_1 a{margin: 0 0 0 40px;}
        .content1_1_1 input[type=button]{margin: 0 0 0 72px;}
        .content1_2{height: 75px;border: #fff 2px solid;padding: 10px;}
        .content1_2_1{padding: 6px 40px;}
        .content1_2_1 a:first-child{margin: 0 0 0 26px;}
    </style>
</head>
<body>
    <div id="head">
        <img src="../img/Frm_BomInfoManage.ico">
        <p>BOM信息维护</p>
    </div>

    <div id="head2">
        <p>Generic BOM Information</p>
    </div>

    <iframe src="bom_copy"></iframe>

    <div id="drag"></div>

    <div id="content1">
        <div class="content1_1">
            <div class="content1_1_1">
                <a>成品号</a>
                <select style="width: 300px;">
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select>
                <a>描述</a> <input type="text" style="width: 300px;background-color: #5f9ea0;">
            </div>
            <div class="content1_1_1">
                <a>版本号</a> <input type="text" style="width: 296px;">
                <input type="button" style="width: 110px;"value="Excel导入">
                <input type="button" style="width: 110px;"value="BOM导出">
            </div>

        </div>

        <div class="content1_2">
            <div class="content1_2_1">
                <a>物料编码</a> <select style="width: 240px;">
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>
            </select>

                <a>主副料</a> <select style="width: 100px;">
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>
            </select>

                <a>数量</a> <input type="text" style="width: 100px;">

                <input type="submit" style="width: 150px;" value="保存">
            </div>

            <div class="content1_2_1">
                <a>物料描述</a> <input type="text" style="width: 545px;background-color: #5f9ea0;">
                <a>版面</a> <select style="width: 100px;">
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>
            </select>
            </div>
        </div>

    </div>

    <div id="content2"></div>

    <div id="content3"></div>

</body>
</html>