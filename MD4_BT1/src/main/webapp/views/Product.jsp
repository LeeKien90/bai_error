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
    <title>Product</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<a href="<%=request.getContextPath()%>/home/initCreateProduct"><h1 style="text-align: center; text-decoration: none">Create Product</h1></a>

<table id="example1" class="table table-bordered table-striped text-center">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Image</th>
        <th>Created Date</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Status</th>
        <th>Category</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listProduct}" var="pro">
        <tr>
            <td>${pro.productId}</td>
            <td>${pro.productName}</td>
            <td><img src="<%=request.getContextPath()%>/views/images/${pro.productImage}" width="100px" alt="#"></td>
            <td>${pro.createDate}</td>
            <td>$ ${pro.price}</td>
            <td>${pro.quantity}</td>
            <td>${pro.productStatus?'Hoạt động':'Không hoạt động'}</td>
            <td>
                <a href="<%=request.getContextPath()%>/home/detail&&productId=${pro.productId}"><input type="submit" value="Detail" class="btn btn-primary"/></a>
                <a href="<%=request.getContextPath()%>/home/updateProduct&&productId=${pro.productId}"><input type="submit" value="Update" class="btn btn-warning"/></a>
                <a href="<%=request.getContextPath()%>/home/deleteProduct&&productId=${pro.productId}"><input type="submit" value="Delete" class="btn btn-danger"/></a>
            </td>
            <td>

            </td>

        </tr>
    </c:forEach>

    </tbody>

</table>
</body>
</html>
