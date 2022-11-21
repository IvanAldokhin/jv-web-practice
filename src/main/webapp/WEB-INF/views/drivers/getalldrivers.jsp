<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all Drivers</title>
</head>
<body>
<h1> List of Drivers: </h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var ="driver">
        <tr>
            <td><c:out value = "${driver.getId()}" /></td>
            <td><c:out value = "${driver.getName()}" /></td>
            <td><c:out value = "${driver.getLicenseNumber()}" /></td>
            <td><form method="get"
                      action ="${pageContext.request.contextPath}/drivers/delete">
                <button type="submit" name="id" value="${driver.getId()}">
                    Delete this driver
                </button>
                </form>
            </td>
           </tr>
    </c:forEach>
</table>
</body>
</html>
