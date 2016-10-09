<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.0.0.js"></script>
    <script>
        function del(itemsId,orderId){
            $.ajax({
                url: "deleteShopping.action",    //请求的url地址
                dataType: "json",   //返回格式为json
                async: true, //请求是否异步，默认为异步，这也是ajax重要特性
                data: { "itemsId": itemsId,"orderId":orderId} ,   //参数值
                type: "POST",   //请求方式
                //beforeSend: function() {},
                success: function(result) {//请求成功时
                    $("#tr-"+itemsId).remove();
                }
                //complete: function() {//请求完成的处理},
                //error: function() {//请求出错处理 }
            });
        }
    </script>
    <title>购物车</title>
</head>
<body>
<table border="1">
    <tr>
        <th>编号</th>
        <th>名称</th>
        <th>价格</th>
        <th>信息</th>
        <th>上架时间</th>
        <th>移出购物车</th>
    </tr>
    <c:forEach items="${orders.itemsList}" var="items">
        <tr id="tr-<c:out value='${items.id}' />">
            <td class="id"><c:out value="${items.id}"></c:out></td>
            <td><c:out value="${items.name}"></c:out></td>
            <td><c:out value="${items.price}"></c:out></td>
            <td><c:out value="${items.detail}"></c:out></td>
            <td><c:out value="${items.createtime}"></c:out></td>
            <td><button  onclick="del(<c:out value='${items.id}'/>,<c:out value='${orders.id}'/>)" >移除</button> </td>
        </tr>
    </c:forEach>
</table>
<button onclick="window.location.href='buy.action'">购买</button>
</body>
</html>
