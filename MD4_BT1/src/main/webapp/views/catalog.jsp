<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 12/8/2022
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <title>Catalog</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<a href="<%=request.getContextPath()%>/home/initCreate"><h1 style="text-align: center; text-decoration: none">Create Catalog</h1></a>

<table id="example1" class="table table-bordered table-striped text-center">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
 <c:forEach items="${listCatalog}" var="cat">
        <tr>
            <td>${cat.catalogId}</td>
            <td>${cat.catalogName}</td>
            <td>${cat.catalogStatus?'Hoạt động':'Không hoạt động'}</td>
            <td>
                <a href="<%=request.getContextPath()%>/home/initUpdate?catalogId=${cat.catalogId}"><input type="submit" value="Update" class="btn btn-warning"/></a>
                <a href="<%=request.getContextPath()%>/home/delete?catalogId=${cat.catalogId}"><input type="submit" value="Delete" class="btn btn-danger"/></a>
            </td>
        </tr>
 </c:forEach>
    </tbody>

</table>
</body>
</html>
