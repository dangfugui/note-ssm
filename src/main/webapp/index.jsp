<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <script  type="text/javascript" >
        window.location.replace("user/login.jsp");
    </script>

</head>

<body>
    <h2>我们都是好孩子</h2>
    <ul>
        <li><a href="items/add.jsp">items/add.jsp</a> </li>
        <li><a href="items/list.action">items/list.action</a> </li>
        <li><a href="/user/login.jsp">/user/login.jsp</a> </li>
        <li><a href="/user/add.jsp">/user/add.jsp</a> </li>

        <li><a href="/orders/list.action">/orders/list.action</a> </li>
        <li><a href="/orders/shopping.action">/orders/shopping.action</a> </li>

    </ul>


</body>
</html>
