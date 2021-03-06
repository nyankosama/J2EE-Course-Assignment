<%--
  Created by IntelliJ IDEA.
  User: nekosama
  Date: 13-3-8
  Time: 上午9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row">
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th>商品ID</th>
            <th>名称</th>
            <th>类型</th>
            <th>商品单价</th>
            <th>预定数量</th>
            <th>预定时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="record" items="${orderInfoRecords}" varStatus="index">
            <tr>
                <td>${record.product.id}</td>
                <td>${record.product.productName}</td>
                <td>${record.product.productType}</td>
                <td>${record.product.price}</td>
                <td>${record.orderNum}</td>
                <td><fmt:formatDate value="${record.orderDate}" type="both"/></td>
                <%--<td>--%>
                    <%--<c:if test="${record.orderCheck=='true'}">已发货</c:if>--%>
                    <%--<c:if test="${record.orderCheck=='false'}">未发货</c:if>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<button class="btn btn-primary" order-id="${record.id}">点击查看</button>--%>
                <%--</td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>