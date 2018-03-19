<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我爱我家</title>
    <link rel="stylesheet" href="../js/layui-v2.2.5/layui/css/layui.css"/>
    <script src="../js/layui-v2.2.5/layui/layui.js"></script>
    <%--<script src="../js/layui/layui.all.js"></script>--%>
    <script src="../js/jquery-3.2.1/jquery-3.2.1.js"></script>
</head>
<body>

<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">我爱我家~后台系统管理</div>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    真水无香
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="navBar layui-side-scroll"></div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <div class="layui-tab" lay-filter="myTab" lay-allowclose="true">
                <ul class="layui-tab-title">
                    <li class="layui-this" lay-id="11">我爱我家</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">首页

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<%--<script src="treeJson.js"></script>--%>
<script>
    var $;
    layui.use(['element'], function(){
        $ = layui.jquery
        var element = layui.element
        var myTab  = function(){
            this.tabConfig = {
                closed : true,
                openTabNum : 10,
                tabFilter : "myTab"
            }
        };
        $.ajax({
            url:"../house/queryHouseTree.do",
            type:"post",
            dataType:"json",
            success:function(data){
                //显示左侧菜单
                if($(".navBar").html() == ''){
                    var _this = this;
                    $(".navBar").html(navBar(data)).height($(window).height()-240);
                    element.init();  //初始化页面元素
                    $(window).resize(function(){
                        $(".navBar").height($(window).height()-240);
                    })
                }
                // 添加新窗口
                $(".layui-nav .layui-nav-item a").on("click",function(){

                    //判断当前节点是否是子节点
                    if($(this).children("span").length == 0){
                        //判断选项卡是否被打开过
                        if(!hasTab($(this).find("cite").text())){
                            element.tabAdd('myTab', {
                                title: '<cite>'+$(this).find("cite").text()+'</cite>'//用于演示
                                ,content:createFrame($(this).attr("data-url"))
                                ,id: $(this).attr("data-id")
                            })
                            element.tabChange('myTab', $(this).attr("data-id"));
                        }else{
                            element.tabChange('myTab', $(this).attr("data-id"));
                        }
                    }
                })

            }

        })



    });
    function createFrame(url){
        alert(url);
        return '<iframe scrolling="auto" frameborder="0"  src="'+ url + '" style="width:100%;height:100%;"></iframe>';

    }

    function hasTab(title){
        var tabIndex = false;
        $(".layui-tab-title li").each(function(){
            if($(this).find("cite").text() == title){
                tabIndex = true;
            }
        })
        return tabIndex;
    }


    function navBar(data){
        var ulHtml = '<ul class="layui-nav layui-nav-tree" lay-filter="myTree">';
        for(var i=0;i<data.length;i++){
            if(data[i].spread){
                ulHtml += '<li class="layui-nav-item layui-nav-itemed">';
            }else{
                ulHtml += '<li class="layui-nav-item">';
            }
            if(data[i].children != undefined && data[i].children.length > 0){
                ulHtml += '<a href="javascript:;" data-id="'+data[i].id+'">';
                if(data[i].icon != undefined && data[i].icon != ''){
                    if(data[i].icon.indexOf("icon-") != -1){
                        ulHtml += '<i class="iconfont '+data[i].icon+'" data-icon="'+data[i].icon+'"></i>';
                    }else{
                        ulHtml += '<i class="layui-icon" data-icon="'+data[i].icon+'">'+data[i].icon+'</i>';
                    }
                }
                ulHtml += '<cite>'+data[i].title+'</cite>';;
                ulHtml += '<span class="layui-nav-more"></span>';
                ulHtml += '</a>'
                ulHtml += '<dl class="layui-nav-child">';
                for(var j=0;j<data[i].children.length;j++){
                    ulHtml += '<dd><a href="javascript:;" data-id="'+data[i].children[j].id+'" data-url="'+data[i].children[j].href+'">';
                    if(data[i].children[j].icon != undefined && data[i].children[j].icon != ''){
                        if(data[i].children[j].icon.indexOf("icon-") != -1){
                            ulHtml += '<i class="iconfont '+data[i].children[j].icon+'" data-icon="'+data[i].children[j].icon+'"></i>';
                        }else{
                            ulHtml += '<i class="layui-icon" data-icon="'+data[i].children[j].icon+'">'+data[i].children[j].icon+'</i>';
                        }
                    }
                    ulHtml += '<cite>'+data[i].children[j].title+'</cite></a></dd>';
                }
                ulHtml += "</dl>"
            }else{
                ulHtml += '<a href="javascript:;" data-id="'+data[i].id+'" data-url="'+data[i].href+'">';
                if(data[i].icon != undefined && data[i].icon != ''){
                    if(data[i].icon.indexOf("icon-") != -1){
                        ulHtml += '<i class="iconfont '+data[i].icon+'" data-icon="'+data[i].icon+'"></i>';
                    }else{
                        ulHtml += '<i class="layui-icon" data-icon="'+data[i].icon+'">'+data[i].icon+'</i>';
                    }
                }
                ulHtml += '<cite>'+data[i].title+'</cite></a>';
            }
            ulHtml += '</li>'
        }
        ulHtml += '</ul>';
        return ulHtml;
    }


</script>
</html>
