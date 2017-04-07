<%@ page contentType="text/html; utf-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yuangong</title>
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        html,body{background-color: #e6e6fa;margin: 0;padding: 0;}
        #head{height: 23px;background-color: #c4d2e0;text-align: left;font-size: 12px;}
        img{float: left;margin: 0px 2px 1px 2px;padding: 5px;}
        #head p{margin:0px 26px;padding: 4px;}
        #head2{height:60px;background-color: #b0c4de;text-align: left;margin: 0;padding: 0;}
        #head2 p{font-family:tahoma;margin:0;padding:0;font-size: 16px;font-weight: bold;color: #fff;font-style: italic;padding: 15px 0 15px 60px;}
        #head3{background-color: #6d6d6d;height:100px;font-size: 12px;}
        #head3 span{margin: 10px 30px;}
        #head3 input{margin: 10px;}
        .input1{background-color: #ffffff
        }
        .input2{background-color: #d9f0fc}
        #head3 .span1 input{background-color: #5f9ea0;}
        .border1{
            border-top:#000 solid 1px;
            border-bottom:#000 solid 1px;
            height: 12px;
            background-color: #ababab;
            cursor: row-resize;
        }
        .border2{
            border-top:#000 solid 1px;
            border-bottom:#000 solid 1px;
            height: 6px;
            background-color: #ababab;
            cursor: row-resize;
        }
        table thead{background-color: #f6f7f9;}
        .tableSelect{background-color: #3399ff;color: #fff;}
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
        var temptr2 = $();
        $(function(){
            $("#table2 tbody").on("click","tr",function(event){
                temptr2.removeClass("tableSelect");
                temptr2 = $(this);
                temptr2.addClass("tableSelect")
            });
        });
    </script>
</head>
<body>

    <div id="head">
        <img src="../img/3.ico">
        <p>员工信息维护</p>
    </div>

    <div id="head2">
        <p>Employee Information Management</p>
    </div>

    <form id="head3">
        <span class="span1">
            员工编码 <input type="text" style="width: 220px;">
            员工姓名 <input type="text" style="width: 370px;">
        </span>
        <br>
        <span class="span2">
            备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" style="width: 665px;">
            <input type="submit" value="保存" style="width: 100px;" onmouseover="this.className='input2'" onmouseout="this.className='input1'">
        </span>
    </form>

    <div class="border1"></div>

    <div style="height: 400px;overflow: auto;">
        <table class="table table-bordered" id="table1" style="background-color: #fff;">
            <thead>
            <tr>
                <th>名称</th>
                <th>城市</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Tanmay</td>
                <td>Bangalore</td>
            </tr>
            <tr>
                <td>Tanmay</td>
                <td>Bangalore</td>
            </tr>
            <tr>
                <td>Sachin</td>
                <td>Mumbai</td>
            </tr>
            <tr>
                <td>Sachin</td>
                <td>Mumbai</td>
            </tr>
            <tr>
                <td>Tanmay</td>
                <td>Bangalore</td>
            </tr>
            <tr>
                <td>Sachin</td>
                <td>Mumbai</td>
            </tr>
            <tr>
                <td>Tanmay</td>
                <td>Bangalore</td>
            </tr>
            <tr>
                <td>Sachin</td>
                <td>Mumbai</td>
            </tr>
            <tr>
                <td>Sachin</td>
                <td>Mumbai</td>
            </tr>
            <tr>
                <td>Tanmay</td>
                <td>Bangalore</td>
            </tr>
            <tr>
                <td>Sachin</td>
                <td>Mumbai</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="border2"></div>

    <div style="height: 300px;overflow: auto;">
        <table class="table table-bordered" id="table2" style="background-color: #fff;">
            <thead>
            <tr>
                <th>名称</th>
                <th>城市</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Tanmay</td>
                <td>Bangalore</td>
            </tr>
            <tr>
                <td>Sachin</td>
                <td>Mumbai</td>
            </tr>
            </tbody>
        </table>
    </div>

</body>
</html>