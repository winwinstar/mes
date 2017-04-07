<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        html,body{background-color: #f0f0f0;margin: 0;padding: 0;}
        #head{height: 23px;background-color: #c4d2e0;text-align: left;font-size: 12px;}
        img{float: left;margin: 3px 2px 1px 2px;}
        #head p{margin:0px 26px;padding: 4px;}
        iframe{padding:0;float: left;width: 50%;border:#828790 1px solid;display: block;}
        #table{width:49%;margin:0 0 0 10px;padding:0;float:left;background-color: #e6e6fa;border:#000 1px solid;}
        .content,iframe,#table{height:500px;}
        .tableSelect{background-color: #3399ff;color: #fff;}
        #liucheng{font-size: 12px;text-align: center;overflow: auto;position: relative;width: 1650px;}
        .child{width: 150px;height: 150px;border: #d3d3d3 1px dashed;padding: 20px 40px 40px 40px;float: left;}
        .child img{width: 60px;height: 60px;}
        .svg1{ }
        .svg2{margin-right:60px;position: absolute; position: absolute;top: 110px;left:1570px;}
    </style>
    <script>
        var temptr = $();
        $(function(){
            $("#table tbody").on("click","tr",function(event){
                temptr.removeClass("tableSelect");
                temptr = $(this);
                temptr.addClass("tableSelect");
            });
        });

        function add(treeNode){
            $("#liucheng").empty();
            if(treeNode.children != null){
                $("#liucheng").append(
                    "<div class='child'>"
                    +"<img src='../img/3.ico'>"
                    +"<p>"+treeNode.name+"</p>"
                    +"</div>"

                    +"<svg style='position: absolute;left:"+(110)+"px;top:"+(60)+"px;' xmlns='http://www.w3.org/2000/svg' width='80px' height='20px' version='1.1'>"
                    +"<defs>"
                    +"<marker id='arrow' markerUnits='strokeWidth' markerWidth='10' markerHeight='10' viewBox='0 0 10 10' refX='5' refY='5' orient='auto' >"
                    +"<path d='M2,2 L8,5 L2,8 L2,2' style='fill: #808080;'/>"
                    +"</marker>"
                    +"</defs>"
                    +"<line x1='0' y1='10' x2='70' y2='10' stroke='#808080' stroke-width='2' marker-end='url(#arrow)'/>"
                    +"</svg>"
                );
                $.each(treeNode.children,function (n,child) {
                    if(n != treeNode.children.length-1){
                        if(n==9 || (n-9)%11 ==0){
                            if(parseInt((n+2)/11)%2==0){
                                $("#liucheng").append(
                                    "<div class='child'>"
                                    +"<img src='../img/3.ico'>"
                                    +"<p>"+child.name+"</p>"
                                    +"</div>"

                                    +"<svg class='svg2' style='left: 70px;top:"+(110+150*(parseInt((n+2)/11)-1))+"' xmlns='http://www.w3.org/2000/svg' width='20px' height='90px' version='1.1'>"
                                    +"<defs>"
                                    +"<marker id='arrow' markerUnits='strokeWidth' markerWidth='10' markerHeight='10' viewBox='0 0 10 10' refX='5' refY='5' orient='auto' >"
                                    +"<path d='M2,2 L8,5 L2,8 L2,2' style='fill: #808080;'/>"
                                    +"</marker>"
                                    +"</defs>"
                                    +"<line x1='10' y1='10' x2='10' y2='60' stroke='#808080' stroke-width='2' marker-end='url(#arrow)'/>"
                                    +"</svg>"
                                );
                            }else{
                                $("#liucheng").append(
                                    "<div class='child'>"
                                    +"<img src='../img/3.ico'>"
                                    +"<p>"+child.name+"</p>"
                                    +"</div>"

                                    +"<svg class='svg2' style='top:"+(110+150*(parseInt((n+2)/11)-1))+"' xmlns='http://www.w3.org/2000/svg' width='20px' height='90px' version='1.1'>"
                                    +"<defs>"
                                    +"<marker id='arrow' markerUnits='strokeWidth' markerWidth='10' markerHeight='10' viewBox='0 0 10 10' refX='5' refY='5' orient='auto' >"
                                    +"<path d='M2,2 L8,5 L2,8 L2,2' style='fill: #808080;'/>"
                                    +"</marker>"
                                    +"</defs>"
                                    +"<line x1='10' y1='10' x2='10' y2='60' stroke='#808080' stroke-width='2' marker-end='url(#arrow)'/>"
                                    +"</svg>"
                                );
                            }
                        }else{
                            if(parseInt((n+2)/11)%2==1){
                                $("#liucheng").append(
                                    "<div class='child' style='float: right'>"
                                    +"<img src='../img/3.ico'>"
                                    +"<p>"+child.name+"</p>"
                                    +"</div>"

                                    +"<svg style='position: absolute;left:"+(150*(11-(n+2)%11)-40)+"px;top:"+(60+150*(parseInt((n+2)/11)))+"px;' xmlns='http://www.w3.org/2000/svg' width='80px' height='20px' version='1.1'>"
                                    +"<defs>"
                                    +"<marker id='arrow' markerUnits='strokeWidth' markerWidth='10' markerHeight='10' viewBox='0 0 10 10' refX='5' refY='5' orient='auto' >"
                                    +"<path d='M2,2 L8,5 L2,8 L2,2' style='fill: #808080;'/>"
                                    +"</marker>"
                                    +"</defs>"
                                    +"<line x1='80' y1='10' x2='5' y2='10' stroke='#808080' stroke-width='2' marker-end='url(#arrow)'/>"
                                    +"</svg>"
                                );
                            }else{
                                var left = 150*((n+2)%11-1)+110;
                                $("#liucheng").append(
                                    "<div class='child'>"
                                    +"<img src='../img/3.ico'>"
                                    +"<p>"+child.name+"</p>"
                                    +"</div>"

                                    +"<svg style='position: absolute;left:"+(left)+"px;top:"+(60+150*(parseInt((n+2)/11)))+"px;' xmlns='http://www.w3.org/2000/svg' width='80px' height='20px' version='1.1'>"
                                    +"<defs>"
                                    +"<marker id='arrow' markerUnits='strokeWidth' markerWidth='10' markerHeight='10' viewBox='0 0 10 10' refX='5' refY='5' orient='auto' >"
                                    +"<path d='M2,2 L8,5 L2,8 L2,2' style='fill: #808080;'/>"
                                    +"</marker>"
                                    +"</defs>"
                                    +"<line x1='0' y1='10' x2='70' y2='10' stroke='#808080' stroke-width='2' marker-end='url(#arrow)'/>"
                                    +"</svg>"
                                );
                            }
                        }
                    }else{
                        //最后一个元素的浮动定位
                        if(parseInt((n+2)/11)%2==1){
                            $("#liucheng").append(
                                "<div class='child' style='float: right'>"
                                +"<img src='../img/3.ico'>"
                                +"<p>"+child.name+"</p>"
                                +"</div>"
                            );
                        }else{
                            $("#liucheng").append(
                                "<div class='child'>"
                                +"<img src='../img/3.ico'>"
                                +"<p>"+child.name+"</p>"
                                +"</div>"
                            );
                        }
                    }
                });
            }else{
                $("#liucheng").append(
                    "<div class='child'>"
                    +"<img src='../img/3.ico'>"
                    +"<p>"+treeNode.name+"</p>"
                    +"</div>"
                );
            }
        }

    </script>
</head>
<body>
    <div id="head">
        <img src="../img/Frm_BomInfoManage.ico">
        <p>工作中心维护</p>
    </div>

    <div class="content">
        <iframe src="cangchu_copy"></iframe>

        <div id="table" style="overflow: auto;">
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
    </div>

    <div id="liucheng">
    </div>


</body>
</html>