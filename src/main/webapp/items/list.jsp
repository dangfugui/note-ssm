<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dangqihe
  Date: 2016/10/8
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.0.0.js"></script>
    <script>
        function del(id){
            $.ajax({
                url: "delete.action",    //请求的url地址
                dataType: "json",   //返回格式为json
                async: true, //请求是否异步，默认为异步，这也是ajax重要特性
                data: { "id": id} ,   //参数值
                type: "POST",   //请求方式
                //beforeSend: function() {},
                success: function(result) {//请求成功时
                        $("#tr-"+id).remove();
                }
                //complete: function() {//请求完成的处理},
                //error: function() {//请求出错处理 }
            });
        }
    </script>
    <title>items list</title>
</head>
<body>
    <c:out value="${sessionScope.loginUser.username}" />你好
    <button onclick="window.location.href='../orders/shopping.action'">购物车</button>
    <button onclick="window.location.href='../orders/list.action'">我的订单</button>
    <h1>商品列表</h1>
    <form action="list.action" method="post">
        商品名称<input type="text" name="name">
        <input type="submit" value="查询">
        <a href="add.jsp">添加商品</a>
    </form>
    <table border="1">
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>价格</th>
            <th>信息</th>
            <th>上架时间</th>
            <th>删除</th>
            <th>加入购物车</th>
        </tr>
        <c:forEach items="${list}" var="items">
            <tr id="tr-<c:out value='${items.id}' />">
                <td class="id"><c:out value="${items.id}"></c:out></td>
                <td><c:out value="${items.name}"></c:out></td>
                <td><c:out value="${items.price}"></c:out></td>
                <td><c:out value="${items.detail}"></c:out></td>
                <td><c:out value="${items.createtime}"></c:out></td>
                <td><button value="删除" onclick="del(<c:out value='${items.id}'/>)" >删除</button> </td>
                <td><button  onclick="javascript:window.location.href='addToOrders.action?id=<c:out value="${items.id}"/>'" >加入购物车</button> </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
