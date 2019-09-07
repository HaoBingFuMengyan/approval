<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/taglib.jsp" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>后台权限码管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script src="${ctxStatic}/jquery/jquery-2.1.1.min.js"></script>
    <script src="${ctxStatic}/layui-v2.5.4/layui/layui.all.js"></script>

    <link rel="stylesheet" href="${ctxStatic}/layui-v2.5.4/layui/css/layui.css">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->

    <style>
        .left-content {
            float: left;
            height: 800px;
            width: 17%;
            border-right:1px solid #ccc;
        }

        .right-content {
            float: left;
            height: 800px;
            width: 82%;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="left-content">
        <div id="test2" class="demo-tree" style="width: 200px;"></div>
    </div>
    <div class="right-content">
        <iframe id="officeContent" style="overflow-x:hidden;" height="100%" width="100%" name="officeContent"
                src="${ctx}/hy/purview/list.shtml" frameborder="0"></iframe>
    </div>
</div>


<script type="text/javascript">
    layui.use(['tree', 'util'], function () {
        var tree = layui.tree
            , layer = layui.layer
            , util = layui.util

            //模拟数据1
            , data1 = [{
                title: '江西'
                , id: 1
                , children: [{
                    title: '南昌'
                    , id: 1000
                    , children: [{
                        title: '青山湖区'
                        , id: 10001
                    }, {
                        title: '高新区'
                        , id: 10002
                    }]
                }, {
                    title: '九江'
                    , id: 1001
                }, {
                    title: '赣州'
                    , id: 1002
                }]
            }, {
                title: '广西'
                , id: 2
                , children: [{
                    title: '南宁'
                    , id: 2000
                }, {
                    title: '桂林'
                    , id: 2001
                }]
            }, {
                title: '陕西'
                , id: 3
                , children: [{
                    title: '西安'
                    , id: 3000
                }, {
                    title: '延安'
                    , id: 3001
                }]
            }]

        //仅节点左侧图标控制收缩
        tree.render({
            elem: '#test2'
            , data: data1
            , onlyIconControl: false  //是否仅允许节点左侧图标控制展开收缩
            , click: function (obj) {
                layer.msg(JSON.stringify(obj.data));
                $('#officeContent').attr("src", "${ctx}/sys/sequence/list.shtml");
            }
        });

    });
</script>

</body>
</html>