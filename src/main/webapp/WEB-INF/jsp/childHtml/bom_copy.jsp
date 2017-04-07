<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" language="java" %>
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
            },
            callback:{
                onClick:onClick
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
            { id:23, pId:2, name:"随意勾选 2-3"},
            { id:231, pId:2, name:"随意勾选 2-31"},
            { id:232, pId:2, name:"随意勾选 2-32"},
            { id:233, pId:2, name:"随意勾选 2-33"},
            { id:234, pId:2, name:"随意勾选 2-34"},
            { id:235, pId:2, name:"随意勾选 2-35"},
            { id:236, pId:2, name:"随意勾选 2-36"},
            { id:237, pId:2, name:"随意勾选 2-37"},
            { id:238, pId:2, name:"随意勾选 2-38"},
            { id:239, pId:2, name:"随意勾选 2-39"},
            { id:2310, pId:2, name:"随意勾选 2-310"},
            { id:2311, pId:2, name:"随意勾选 2-311"},
            { id:2312, pId:2, name:"随意勾选 2-312"},
            { id:2313, pId:2, name:"随意勾选 2-313"},
            { id:2314, pId:2, name:"随意勾选 2-314"},
            { id:2315, pId:2, name:"随意勾选 2-315"},
            { id:2316, pId:2, name:"随意勾选 2-316"},
            { id:2317, pId:2, name:"随意勾选 2-317"},
            { id:2318, pId:2, name:"随意勾选 2-318"},
            { id:2319, pId:2, name:"随意勾选 2-319"},
            { id:2320, pId:2, name:"随意勾选 2-320"},
            { id:2321, pId:2, name:"随意勾选 2-321"},
            { id:2322, pId:2, name:"随意勾选 2-322"},
            { id:2323, pId:2, name:"随意勾选 2-323"},
            { id:2324, pId:2, name:"随意勾选 2-324"},
            { id:2325, pId:2, name:"随意勾选 2-325"},
            { id:2326, pId:2, name:"随意勾选 2-326"},
            { id:2327, pId:2, name:"随意勾选 2-327"},
            { id:2328, pId:2, name:"随意勾选 2-328"},
            { id:2329, pId:2, name:"随意勾选 2-329"},
            { id:2330, pId:2, name:"随意勾选 2-330"},
            { id:2331, pId:2, name:"随意勾选 2-331"},
            { id:2332, pId:2, name:"随意勾选 2-332"},
            { id:2333, pId:2, name:"随意勾选 2-333"},
            { id:2334, pId:2, name:"随意勾选 2-334"},
        ];

        function onClick(event,treeId,treeNode){

        }

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
        body{margin:0;padding:0;background-color: #f5f5f5;overflow: auto;}
        #searchText{margin: 0;padding: 0;border: #b0c4de 1px solid;}
        input{margin:0;outline:none;border: none;width: 100%;}
    </style>
</HEAD>

<BODY>

<div id="searchText">
    <input id="input" type="text"/>
</div>

<div class="content_wrap" style="width: 100%;height: 100%;overflow-x: hidden;">
    <div class="zTreeDemoBackground left" style="width: 100%;height: 100%;">
        <ul id="treeDemo" class="ztree" style="border:none;background: none;overflow: hidden;"></ul>
    </div>
</div>
</BODY>
</HTML>