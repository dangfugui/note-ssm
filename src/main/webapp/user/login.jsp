<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <form action="login.action" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td>
                    <input type="text" name="username">
                </td>
            </tr>

            <tr>
                <td>密码</td>
                <td>
                    <input type="password" name="password">
                </td>
            </tr>
            <tr>
                <td ><input type="submit" value="登录"></td>
                <td ><button> <a href="add.jsp">注册</a></button> </td>
            </tr>
            <tr>
                <td colspan="2">
                    <c:out value="${info}"></c:out>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
