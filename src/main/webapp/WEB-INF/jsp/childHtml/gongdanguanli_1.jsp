<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gongdanguanli</title>
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        html,body{background-color: #dcdcdc;margin: 0;padding: 0;}
        #head{height: 23px;background-color: #c4d2e0;text-align: left;font-size: 12px;}
        img{float: left;margin: 0px 2px 1px 2px;padding: 5px;}
        #head p{margin:0px 26px;padding: 4px;}
        #head2{height:60px;background-color: #b0c4de;text-align: left;margin: 0;padding: 0;}
        #head2 p{font-family:tahoma;margin:0;padding:0;font-size: 16px;font-weight: bold;color: #fff;font-style: italic;padding: 15px 0 15px 60px;}

        #head3{background-color: #6d6d6d;height:100px;font-size: 12px;padding-left:10px; }
        #head3 span{margin: 10px 30px;}
        #head3 input{margin: 10px;}
        .input1{background-color: #ffffff}
        .input2{background-color: #d9f0fc}

        .border1{
            border-top:#000 solid 1px;
            border-bottom:#000 solid 1px;
            height: 6px;
            background-color: #008080;
            cursor: row-resize;
        }
        table thead{background-color: #f6f7f9;}
        .tableSelect{background-color: #3399ff;color: #fff;}

        a:hover {
            text-decoration: none;
        }

    </style>
    <script>
        var temptr1 = $();
        $(function(){
            $("#table1 tbody").on("click","tr",function(event){
                temptr1.removeClass("tableSelect");
                temptr1 = $(this);
                temptr1.addClass("tableSelect")
            });
        });
        $(function () {
            $(".pop").popover({placement:'top', trigger:'manual', delay: {show: 100, hide: 100}, html: true,
                title: function () {
                //    return $("#data-original-title").html();
                },
                content: function () {
                //    return $("#data-content").html(); // 把content变成html
                    var value = $(".pop").html();
                    var html = "<form class='form-inline editableform' style=''>"
                        +"<div class='control-group form-group'>"
                        +"<div class='editable-input'>"
                        +"<input type='text' class='form-control input-sm' value='"+value+"'>"
                        +"<button type='submit' class='btn btn-primary btn-sm editable-submit'>"
                        +"<i class='glyphicon glyphicon-ok'></i>"
                        +"</button>"
                        +"<button type='button' class='btn btn-default btn-sm editable-cancel'>"
                        +"<i class='glyphicon glyphicon-remove'></i>"
                        +"</button>"
                        +"</div>"
                        +"</div>"
                        +"</form>";
                        return html;
                }});
            $('body').click(function (event) {
                var target = $(event.target);       // 判断自己当前点击的内容
                if (!target.hasClass('pop')
                    && !target.hasClass('form-control input-sm')
                ) {
                    $('.pop').popover('hide');      // 当点击body的非弹出框相关的内容的时候，关闭所有popover
                }
            });
            $(".pop").click(function (event) {
                $('.pop').popover('hide');          // 当点击一个按钮的时候把其他的所有内容先关闭。
                $(this).popover('toggle');          // 然后只把自己打开。
            });
        });
    </script>
</head>
<body>
    <div id="head">
        <img src="../img/Partno.ico">
        <p>设备运行日志</p>
    </div>

    <div id="head2">
        <p>Equipment Run Log</p>
    </div>

    <form id="head3">
            <span>
                工单编码 <input type="text" style="width: 200px;background-color: #5f9ea0;">
                工单数量 <input type="text" style="width: 100px;background-color: #5f9ea0;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工单计划开始时间 <input type="date" value="2017-03-23" style="margin-left:12px;width: 220px;">
                <input type="checkbox">
            </span>
        <br>
        <span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;描述 <input type="text" style="width: 200px;">
                产品编码&nbsp; <select style="margin-left:8px;width: 100px;">
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select>
                <input type="checkbox">
                工单计划完工时间 <input type="date" value="2017-03-24" style="width: 220px;">
                <input type="checkbox">
                <input type="submit" value="保存" style="width: 100px;" onmouseover="this.className='input2'" onmouseout="this.className='input1'">
            </span>
    </form>

    <div class="border1"></div>

    <div style="height: 400px;overflow: auto;">
        <table class="table table-bordered" id="table1" style="background-color: #fff;">
            <thead>
            <tr>
                <th>工单编码</th>
                <th>工单数量</th>
                <th>完工率</th>
                <th>描述</th>
                <th>工单状态</th>
                <th>Max_FlexQTY</th>
                <th>产品编码</th>
                <th>工单计划开工时间</th>
                <th>工单计划完成时间</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>GD0929</td>
                <td>1000</td>
                <td>0.00%</td>
                <td>TEST PASS</td>
                <td><a href="#" class="pop" data-toggle="popover" data-html="true" data-placement="bottom">点我</a></td>
                <td></td>
                <td>AE0100AP</td>
                <td>2017/3/23</td>
                <td style="background-color: red">2017/3/23</td>
            </tr>
            <tr>
                <td>GD0929</td>
                <td>1000</td>
                <td>0.00%</td>
                <td>TEST PASS</td>
                <td>Created</td>
                <td></td>
                <td>AE0100AP</td>
                <td>2017/3/23</td>
                <td style="background-color: red">2017/3/23</td>
            </tr>
            <tr style="background-color: #008000">
                <td>GD0929</td>
                <td>1000</td>
                <td>0.00%</td>
                <td>TEST PASS</td>
                <td>Completed</td>
                <td></td>
                <td>AE0100AP</td>
                <td>2017/3/23</td>
                <td>2017/3/23</td>
            </tr>
            <tr>
                <td>GD0929</td>
                <td>1000</td>
                <td>0.00%</td>
                <td>TEST PASS</td>
                <td>Created</td>
                <td></td>
                <td>AE0100AP</td>
                <td>2017/3/23</td>
                <td style="background-color: red">2017/3/23</td>
            </tr>
            <tr>
                <td>GD0929</td>
                <td>1000</td>
                <td>0.00%</td>
                <td>TEST PASS</td>
                <td>Created</td>
                <td></td>
                <td>AE0100AP</td>
                <td>2017/3/23</td>
                <td style="background-color: red">2017/3/23</td>
            </tr>
            </tbody>
        </table>
    </div>

</body>
</html>