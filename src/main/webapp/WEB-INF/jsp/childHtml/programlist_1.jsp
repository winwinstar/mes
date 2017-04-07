<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Programlist</title>
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

        iframe{width:260px;height: calc(100vh - 86px);border: none;display: block;float: left;}
        .drag{
            float: left;
            width: 6px;
            height:calc(100vh - 86px);
            background-color: #a0a0a0;
            cursor: e-resize;
        }

        .border2{
            height: 3px;
            background-color: #f0f0f0;
            cursor: row-resize;
        }

        table thead{background-color: #f6f7f9;}
        .tableSelect{background-color: #3399ff;color: #fff;}
        .input1{background-color: #ffffff}
        .input2{background-color: #d9f0fc}

        .content-body{font-size: 12px;padding: 0px;margin: 0px;}
        .content-body span{padding-left: 70px;margin: 50px;}
        .content-body input[type=checkbox] {margin-left: 120px;}
    </style>
    <script>
        var temptr1 = $();
        $(function(){
            $("#table1 tbody").on("click","tr",function(event){
                temptr1.removeClass("tableSelect");
                temptr1 = $(this);
                temptr1.addClass("tableSelect");

                $("#table2 tbody").empty();
                $("#table2 tbody").append("<tr>"
                    +"<td>Tanmay</td>"
                    +"<td>Bangalore</td>"
                    +"</tr>");
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

        function add(treeNode){
            $("#table1 tbody").empty();
            $("#table1 tbody").append("<tr>"
                +"<td>Tanmay</td>"
                +"<td>Bangalore</td>"
                +"<td><input type='button' class='btn btn-info' data-toggle='modal' data-target='#myModal' value='点击'></input></td>"
                +"</tr>");
        }

    </script>
</head>
<body>
    <div id="head">
        <img src="../img/purchase.bmp">
        <p>Program List Registration</p>
    </div>

    <div id="head2">
        <p>Program List Registration</p>
    </div>

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Program List Registration</h4>
                </div>
                <div class="modal-body">
                    <div class="content-body">
                        <input type="checkbox"> 是否连续添加
                        <br>
                        <span>
                            栈位编号<input type="text" style="width: 300px;margin-top: 10px;">
                        </span>
                        <br>
                        <span>
                            物料编码<select style="width: 300px;margin-top: 10px;">
                                    <option>123</option>
                                    <option>123</option>
                                </select>
                        </span>
                        <br>
                        <span>
                            位号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width: 300px;margin-top: 10px;">
                        </span>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Sure</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <div class="border2"></div>

    <iframe src="programlist_copy"></iframe>

    <div class="drag"></div>

    <div style="width: 50%;height:calc(100vh - 86px);float:left;overflow: auto;border: #000 solid 1px;">
        <table class="table table-bordered" id="table1" style="background-color: #fff;">
            <thead>
            <tr>
                <th>名称</th>
                <th>城市</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>

    <div class="drag"></div>

    <div style="height:calc(100vh - 86px);overflow: auto;">
        <div style="height: 60px;background-color: #a0a0a0;text-align: center;font-size: 12px;">
            替代料 <select style="width: 200px;margin: 7px 5px;">
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                  </select>
            <br>
            <input type="submit" style="width: 200px;margin-left: 35px;" value="Save" onmouseover="this.className='input2'" onmouseout="this.className='input1'">
        </div>
        <table class="table table-bordered" id="table2" style="background-color: #fff;border: #000 solid 1px;">
            <thead>
            <tr>
                <th>名称</th>
                <th>城市</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>

</body>
</html>