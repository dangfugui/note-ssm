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
</head>
<body>
    <title>orders list</title>
    <h1>订单列表</h1>


    <ul>
        <c:forEach items="${list}" var="order">
            <br/>
            <li>
                订单编号：<c:out value="${order.id}"/> 创建时间：<c:out value="${order.createtime}"></c:out><br/>

                <table border="1">
                    <tr>
                        <th>商品名称</th>
                        <th>商品价格</th>
                        <th>上架时间</th>
                    </tr>
                    <c:forEach items="${order.itemsList}" var="item">
                        <tr>
                            <td><c:out value="${item.name}" /></td>
                            <td><c:out value="${item.price}" /></td>
                            <td><c:out value="${item.createtime}" /></td>
                        </tr>
                    </c:forEach>
                </table>
            </li>
        </c:forEach>
    </ul>
</body>
</html>
