/**
 *
 */

function valiName(obj) {
    var txt=obj.value;

    var msg=document.getElementById("msg1");
    var reg=/^[0-9a-zA-Z]/;
    console.log(msg)
    if(txt.length!=0){
        for(i=0;i<txt.length;i++){
            if(!reg.test(txt)){
                msg.innerText="*格式不正确，只能输入字母或数字";
                return false;
            }
        }
        if((txt.length<3&&txt.length>0)||txt.length>15){
            msg.innerText="*只能输入3-15个字母或数字";
            return true;
        }
        else {
            msg.innerText="";
        }
    }
    else{
        msg.innerText="*用户名不能为空";
        return false;
    }

}
function checkpwd(obj) {
    var txt=obj.value;

    var msg=document.getElementById("msg2");
    console.log(msg);
    if(txt.length<6||txt.length>15){
        msg.innerText="*密码长度必须为6-15之间";
    }
    else{
        msg.innerText="";
    }
}
//显示隐藏对应的switchPwd()方法:
$(function(){
    // 通过jqurey修改
    $("#passwordeye").click(function(){
        let type =  $("#password").attr('type')
        if(type === "password"){
            $("#password").attr("type","text");
        }else{
            $("#password").attr("type","password");
        }
    });
    $("#passwordeye2").click(function(){
        let type =  $("#password2").attr('type')
        if(type === "password"){
            $("#password2").attr("type","text");
        }else{
            $("#password2").attr("type","password");
        }
    });
});
function passCheck2(){
    var p1=document.form.password.value;
    var p2=document.form.password2.value;
    var msg=document.getElementById("msg3");
    console.log(msg);
    if(p1!=p2){
        // alert("确认密码与密码输入不一致");
        msg.innerText="*确认密码与密码输入不一致";
        return false;
    }else{
        msg.innerText="";
        return true;
    }
}
function checkEmail(){
    var Email = document.getElementById("email").value;
    var e = Email.indexOf("@"&&".");
    var msg=document.getElementById("msg4");
    console.log(msg);
    if(Email.length!=0){
        if(e>0){
            if(Email.charAt(0)=="@"&&"."){
                //alert("符号@和符号.不能再邮件地址第一位");
                msg.innerText="符号@和符号.不能再邮件地址第一位";
                return false;
            }
            else{
                msg.innerText="";
                return true;
            }
        }
        else{
            //alert("电子邮件格式不正确\n"+"必须包含@符号和.符号！");
            msg.innerText="*电子邮件格式不正确,必须包含@符号和.符号！";
            return false;
        }
    }
    else{
        alert("请输入电子邮件！")
        return false;
    }
}
function checknumber(obj) {
    var txt = document.form.number.value;
    var msg = document.getElementById("msg5");
    var reg = /^[0-9]/;
    if (txt.length != 0) {
        for (i = 0; i < txt.length; i++) {
            if (!reg.test(txt)) {
                msg.innerText = "*格式不正确，只能输入数字";
                return false;
            }
            else
                msg.innerText = "";
        }
    }
    else
    {
        msg.innerText = "*电话号码不能为空";
        return false;
    }
}


