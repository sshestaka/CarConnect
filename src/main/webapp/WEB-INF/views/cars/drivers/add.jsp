<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp" %>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">Add driver to car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Car</th>
        <th>Driver</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <select name="car" form="car" required>
                <c:forEach items="${allCars}" var="car">
                    <option value="${car.id}">${car.model} ${car.manufacturer.name}</option>
                </c:forEach>
            </select>
        </td>
        <td>
            <select name="driver" form="car" required>
                <c:forEach items="${allDrivers}" var="driver">
                    <option value="${driver.id}">${driver.name}</option>
                </c:forEach>
            </select>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
</body>
</html>
