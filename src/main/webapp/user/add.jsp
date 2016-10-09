<%--
  Created by IntelliJ IDEA.
  User: dangqihe
  Date: 2016/10/8
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="../js/jquery-3.0.0.js"></script>
<script>
    function login() {
        if($("#password1").val()==$("#password2").val()){
            return true;
        }else{
            $("#info").text("两次密码不统一");
        }
        return false;
    }
</script>
<html>
<head>
    <title>注册用户</title>
    <form action="add.action"   method="post">
    <table colspan="1">
       <tr>
           <td>用户名</td>
           <td><input type="text" name="username"></td>
       </tr>
        <tr>
            <td>密码</td>
            <td><input id="password1" type="password" name="password"></td>
        </tr>
        <tr>
            <td>确认密码</td>
            <td><input id="password2" type="password" ></td>
        </tr>
        <%--<tr>--%>
            <%--<td>出生日期</td>--%>
            <%--<td><input type="text" name="birthday"></td>--%>
        <%--</tr>--%>
        <tr>
            <td ><input type="submit" value="注册"></td>
            <td ><div id="info"></div> </td>
        </tr>
    </table>
    </form>
</head>
<body>

</body>
</html>
