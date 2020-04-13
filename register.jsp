<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2020/4/12
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人注册</title>
    <link rel="stylesheet" href="css/register.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/register.js"></script>
    <script src="js/jquery-2.2.3.min.js"></script>
</head>
<div class="header">
    <div class="logo-con w clearfix">
        <a href=" http://www.jd.com " class="logo "> </a>

        <div class="logo-title">个人注册</div>
        <div class="have-account">已有账号？ <a href="
             http://localhost:8080/webhomework_war_exploded/
        " style="color: red">请登录&gt;</a></div>
    </div>
</div>
<body>
<form name="form" action="register" method="post">
    <div id="aa">
        <div class="form-item form-item-account" id="form-item-account" style="border-color: rgb(221, 221, 221);">
            <label class="lable">用　户　名</label>
            <input type="text" id="username" name="username" class="field" onblur="valiName(this)" maxlength="20"
                   placeholder="英文字母或数字,长度3-15">
        </div>
        <div class="input-tip">
            <span id="msg1" class="bb"></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">设 置 密 码</label>
                <input type="password" id="password" name="password" class="field" onblur="checkpwd(this)"
                       maxlength="20" placeholder="输入您的密码">

                <span>
			<INPUT id="passwordeye" type="button" value="">

        </span>
            </div>
        </div>
        <div class="input-tip">
            <span id="msg2" class="bb"></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">确 认 密 码</label>
                <input type="password" id="password2" name="password2" class="field" maxlength="20" placeholder="">
                <span>
			<INPUT id="passwordeye2" type="button" value="">

        </span>
            </div>
        </div>
        <div class="input-tip">
            <span id="msg3" class="bb"></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">真 实 姓 名</label>
                <input type="text" name="name" class="field" onclick="passCheck2()" maxlength="20"
                       placeholder="中文，2-10个字符">
            </div>
        </div>
        <div class="input-tip">
            <span></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">出 生 日 期</label>
                <input type="date" name="date" class="field" style="margin: 7px" maxlength="20"
                       placeholder="yyyy-mm-dd">
            </div>
        </div>
        <div class="input-tip">
            <span></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">电 子 邮 箱</label>
                <input type="email" id="email" name="email" class="field" maxlength="20" placeholder="必填，且格式要正确;">
            </div>
        </div>
        <div class="input-tip">
            <span id="msg4" class="bb"></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">电 话 号 码</label>
                <input type="text" name="number" class="field" onclick="checkEmail()" maxlength="20"
                       placeholder="选填，且是数字">
            </div>
        </div>
        <div class="input-tip">
            <span id="msg5" class="bb"></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">地 址</label>
                <input type="text" name="address" class="field" onclick="checknumber(this)" maxlength="20"
                       placeholder="长度不能大于100">
            </div>
        </div>
        <div class="input-tip">
            <span></span>
        </div>
        <div>
            <div class="form-item form-item-account" style="border-color: rgb(221, 221, 221);">
                <label class="lable">邮 编</label>
                <input type="text" name="adress" class="field" maxlength="20" placeholder="选填, 且是6位数字">
            </div>
        </div>
        <!--     验证用户名是否重复。-->
        <div class="input-tip">
            <span></span>
        </div>
        <div>
            <input type="submit" id="login" class="btn-register customizeColor">
            </input>
        </div>
    </div>

    <div id="form-footer" class="footer w">
        <div class="links">
            <a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx"> 关于我们</a>|
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/">联系我们</a>|
            <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">人才招聘</a>|
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx">商家入驻</a>|
            <a rel="no  follow" target="_blank" href="//www.jd.com/intro/service.aspx">广告服务</a>|
            <a rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>|
            <a target="_blank" href="//club.jd.com/links.aspx">友情链接</a>|
            <a target="_blank" href="//media.jd.com">销售联盟</a>|
            <a href="//club.jd.com/" target="_blank">京东社区</a>|
            <a href="//gongyi.jd.com" target="_blank">京东公益</a>|
            <a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
        </div>
        <div class="copyright">
            Copyright©2004-2020&nbsp;&nbsp;qianqian&nbsp;版权所有
        </div>

    </div>
</form>
<%--<audio autoplay="autoplay" loop="loop" preload="auto"--%>
<%--       src="music/shaonian.mp3">--%>
<%--</audio>--%>
<div class="demo"></div>
<script type="text/javascript">
    $(function () {
        $(document).click(function (e) {
            e = e || window.event;
            var x = e.pageX - 10,
                y = e.pageY - 12;
            //产生1-6的随机数
            var num = Math.floor(Math.random() * 6 + 1);
            //求出div标签下的Img个数，每点击一次img的个数就会增加一个0++
            var index = $('.demo').children('img').length;
            $('.demo').append('<img src="">');
            $('img:eq(' + index + ')').attr('src', './images/' + num + '.svg');
            $('img:eq(' + index + ')').css({'top': y, 'left': x});
            $('img').animate({
                'top': e.pageY - 200,
                'opacity': '0'
            }, 3000)
        });

    })

</script>

</body>
</html>
