<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 12/12/2022
  Time: 11:50 AM
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
    <title>Create Product</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/home/createProduct" method="post">
    <table id="example1" class="table table-bordered table-striped text-center">
        <tr>
            <th>Name</th>
            <td><input type="text" name="productName"/></td>
        </tr>
        <tr>
            <th>Image</th>
            <td><input type="file" name="image"/></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><input type="text" name="price"/></td>
        </tr>
        <tr>
            <th>Quantity</th>
            <td><input type="number" name="quantity"/></td>
        </tr>
        <tr>
            <th>Description</th>
            <td> <textarea type="text" id="descriptions" name="descriptions"></textarea></td>

        </tr>
        <tr>
            <th>Status</th>
            <td>
                <select class="form-select" name="productStatus" id="productStatus">
                    <option value="true" selected>Hoạt động</option>
                    <option value="false">Không hoạt động</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>
                Catalog
            </th>
            <td>
                <select class="form-select" name="parentId" id="catalogParent">

                    <option value="0" selected>Choose...</option>
                   <c:forEach items="${listCatalog}" var="cat">
                        <option value="${cat.catalogId}">${cat.catalogName}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="Created" class="btn btn-primary"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
