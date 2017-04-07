<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<HTML>
<HEAD>
    <TITLE> Cangchu </TITLE>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../plugs/treeview/css/demo.css" type="text/css">
    <link rel="stylesheet" href="../plugs/treeview/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="../plugs/treeview/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="../plugs/treeview/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="../plugs/treeview/js/jquery.ztree.excheck.js"></script>
    <!--
    <script type="text/javascript" src="../../../js/jquery.ztree.exedit.js"></script>
    -->
    <SCRIPT type="text/javascript">
        <!--
        var setting = {
            data: {
                simpleData: {
                    enable: true
                }
            },
            view: {
                showIcon: false
            }
        };

        var zNodes =[
            { id:1, pId:0, name:"随意勾选 1"},
            { id:11, pId:1, name:"随意勾选 1-1"},
            { id:111, pId:11, name:"随意勾选 1-1-1"},
            { id:112, pId:11, name:"随意勾选 1-1-2"},
            { id:12, pId:1, name:"随意勾选 1-2"},
            { id:121, pId:12, name:"随意勾选 1-2-1"},
            { id:122, pId:12, name:"随意勾选 1-2-2",checked:true},
            { id:2, pId:0, name:"随意勾选 2"},
            { id:21, pId:2, name:"随意勾选 2-1"},
            { id:22, pId:2, name:"随意勾选 2-2"},
            { id:221, pId:22, name:"随意勾选 2-2-1"},
            { id:222, pId:22, name:"随意勾选 2-2-2"},
            { id:23, pId:2, name:"随意勾选 2-3"}
        ];


        $(document).ready(function(){
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);
            var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
            treeObj.expandAll(true);

            $("#searchText input").keydown(function (e) {
                var text = $("#input").val();
                var curKey = e.which;
                if (curKey == 13) {
                    var nodelist = treeObj.getNodesByParamFuzzy("name",text,null);
                    if(nodelist != null){
                        nodelist[0].highlight = true;
                        treeObj.updateNode(nodelist[0]);
                        var nodes=treeObj.getNodes();
                        var	nodes_array = treeObj.transformToArray (nodes);
                        for(var i=0;i<nodes_array.length;i++){

                            if(nodes_array[i].highlight) {
                                treeObj.selectNode(nodes_array[i]);
                            }

                        }
                        for(var i=0,l=nodelist.length;i<l;i++){
                            if(nodelist[i].highlight){
                                nodelist[i].highlight = false;
                                treeObj.updateNode(nodelist[i]);
                            }
                        }
                    }

                }
            });
        });
        //-->
    </SCRIPT>

    <style>
        body{background-color: #f5f5f5;}
        #head{height: 23px;background-color: #c4d2e0;text-align: left;font-size: 12px;}
        img{float: left;margin: 1px 2px 1px 2px;padding: 1px;}
        #head p{margin:0 26px;}
        #head2{height:60px;background-color: #b0c4de;text-align: left;}
        #head2 p{font-family:tahoma;font-size: 16px;font-weight: bold;color: #fff;font-style: italic;padding: 15px 0 15px 60px;}
        #searchText{margin: 0;padding: 0;border: #b0c4de 1px solid;}
        input{margin:0;outline:none;border: none;width: 100%;}
    </style>
</HEAD>

<BODY>

    <div id="head">
        <img src="../img/Partno.ico">
        <p>仓储信息维护</p>
    </div>

    <div id="head2">
        <p>Genernic Factory Information</p>
    </div>

    <div id="searchText">
        <input id="input" type="text"/>
    </div>

    <div class="content_wrap">
        <div class="zTreeDemoBackground left">
            <ul id="treeDemo" class="ztree" style="border:none;background: none;overflow: hidden;"></ul>
        </div>
    </div>
</BODY>
</HTML>