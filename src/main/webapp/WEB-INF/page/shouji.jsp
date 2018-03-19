<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2018/1/22
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>国家图书馆</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.0.js"></script>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Meta-Tags -->

    <!-- Style --> <link rel="stylesheet" href="<%=request.getContextPath()%>/zwtp_1_dj/css/style.css" type="text/css" media="all">



</head>
<body>
<h1>员工登录</h1>

<div class="container w3layouts agileits">

    <div class="login w3layouts agileits">
        <h2>手 机 登 录</h2>
        <form id="sjuser-form" method="post">
            <input type="text" name="loginnumber" placeholder="手机号" id="loginnumber" required="">
            <input type="text" name="sjyzm" placeholder="请填入短信验证码"  id="sjyzm"   required="">
            <input type="button"value="获取短信验证码" id="sjbutton">
        </form>

        <div class="send-button w3layouts agileits">

            <input type="button"  id ="loginButton" value="登 录"></br></br>
            <a href="<%=request.getContextPath()%>/login.jsp">返回账号登录页面</a>
        </div>

        <div class="social-icons w3layouts agileits">
            <p>- 其他方式登录 -</p>
            <ul>
                <li class="weixin w3ls"><a href="#">
                    <span class="icons w3layouts"></span>
                    <span class="text w3layouts agileits">微信</span></a></li>
                <li class="weibo aits"><a href="#">
                    <span class="icons agileits"></span>
                    <span class="text w3layouts agileits">微博</span></a></li>
                <div class="clear"> </div>
            </ul>
        </div>
        <div class="clear"></div>
    </div><div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

    <div class="clear"></div>

</div>

<div class="footer w3layouts agileits">

</div>


<script>
/*  手机获取短信验证码按钮-------倒计时切换      */
    var count = 60;
    var time;
    var flag = true;
    $('#sjbutton').click(function(){
        if(flag){
            time = window.setInterval('countdown()',1000)
            flag = false;
        }
    })

    function countdown(){
        $('#sjbutton').val("倒计时"+--count+"s");
        if(count <= 0){
            $('#sjbutton').val("获取验证码");
            count = 5;
            flag = true;
            window.clearInterval(time);
        }
    }





 /* 点击发送验证码短信的时候把手机号传送到后台在生产者的service实现类调用HttpClient的工具类*/

$('#sjbutton').click(function(){
       //判断用户账号是否为空
        if($("#loginnumber").val()==null || $("#loginnumber").val()==""){
            alert("手机号不能为空！！！");
          }else{
            alert(111);
        $.ajax({
            url:"/staff/HttpClientMessange",
            type:"post",
            data:{"phonenumer":$("[name='loginnumber']").val()},
            dataType:"json",
            success:function (){
               alert("短信已经发送");
            },
            error:function (){
                alert("系统错误，请使用debug调试！！！");
            }
         })
        }
})





$("#loginButton").click(
    function () {

        // 获取输入的文本框的值
        var loginNumber = $("#loginnumber").val();
        alert("loginNumber"+loginNumber);
        var sjyzm = $("#sjyzm").val();
        if (loginNumber == '') {
            alert('请输入您的账号');
        } else if (sjyzm == '' || sjyzm.length != 6) {
            alert('请输入有效位数的短信验证码');
        } else {
            $.ajax({
                url: "<%=request.getContextPath()%>/use/Sjdxlogin.do",
                type: "post",
                //data里面可以传递多个值,如果这个值在实体类里面没有这个属性则可以这么传递到后台
                data: {"loginnumber":$("[name='loginnumber']").val(),"sjyzm":$("[name='sjyzm']").val(),},
                dataType: "text",
                success: function (falg){
                    if (falg=="loginYes") {
                        alert("登陆成功");
                        location.href = "<%=request.getContextPath()%>/index.jsp";
                    } else if (falg=="chenkNameNo") {
                           alert("手机号没有注册");
                        location.href = "<%=request.getContextPath()%>/shouji.jsp";
                    }
                }
            })
        }

    })



</script>









</body>
</html>
