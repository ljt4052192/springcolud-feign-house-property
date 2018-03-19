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
<h1>国家图书馆</h1>

<div class="container w3layouts agileits">

    <div class="login w3layouts agileits">
        <h2>登 录</h2>
        <form id="user-form" method="post">
            <input type="text" id="loginnumber" name="loginnumber" placeholder="用户名" required="">
            <input type="password" id="password" name="password" placeholder="密码" required="">
            <!-- 给验证码的input框设置onblur事件，将当前的内容传到后台与session中的验证码进行比对 -->
            <input type="text" id="checkcode" name="checkcode"  placeholder="验证码" maxlength="4" required="">
            <img id="checkImg" src="<%=request.getContextPath()%>/use/checkImg.do" onclick="change()" title="点击更换验证码">
            <span id="imgSpan"></span>

        <%--<ul class="tick w3layouts agileits">
            <li>
                <input type="checkbox" id="brand1" value="">
              &lt;%&ndash;  <label for="brand1"><span></span>记住我</label>&ndash;%&gt;
            </li>
        </ul>--%>
        </form>

        <div class="send-button w3layouts agileits">

                <input type="button"  id ="loginButton" value="登 录">

        </div>


        <a href="#">记住密码?</a>
        <div class="social-icons w3layouts agileits">
            <p>- 其他方式登录 -</p>
            <ul>
                <li class="shouji"><a href="<%=request.getContextPath()%>/shouji.jsp">
                    <span class="icons w3layouts agileits"></span>
                    <span class="text w3layouts agileits">手机</span></a></li>
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
     //切换验证码
     function change(){
          var img1=document.getElementById("checkImg");
          img1.src="<%=request.getContextPath()%>/use/checkImg.do?"+new Date(); //加时间戳防止缓存
}


    $("#loginButton").click(
           function (){
           //判断验证码是否为空
           if($("#checkcode").val()==null || $("#checkcode").val()==""){
           alert("验证码不能为空！！！");
           return false;
}

           if($("#loginnumber").val()==null || $("#loginnumber").val()==""){
           alert("账号不能为空！！！");
           return false;
}
           if($("#password").val()==null || $("#password").val()==""){
           alert("密码不能为空！！！");
           return false;
           }

           $.ajax({
           url:"<%=request.getContextPath()%>/use/login.do",
           type:"post",
           data:$("#user-form").serialize(),
           dataType:"text",
            success:function (flag){
          if(flag=='1'){
                  location.href = "<%=request.getContextPath()%>/index.jsp";
          }else if(flag=='2'){
              alert("用户名或者密码错误！！！");
             $("#pwdSpan").html("<font color='red'>用户名或者密码错误！！！</font>");
          }else{
              alert("验证码错误！！！！！！");
         $("#imgSpan").html("<font color='red'>验证码错误！！！</font>");
          }
   },
           error:function (){
           alert("系统错误，请使用debug调试！！！");
}
})
}
)

</script>









</body>
</html>
