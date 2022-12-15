<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 12/9/2022
  Time: 4:54 PM
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
    <title>Create</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/home/create" method="post">
<table id="example1" class="table table-bordered table-striped text-center">
    <tr>
        <th>Name</th>
        <td><input type="text" name="catalogName"/></td>
    </tr>
    <tr>
        <th>Status</th>
        <td>
            <select class="form-select" name="catalogStatus" id="catalogStatus">
                <option value="true">Hoạt động</option>
                <option value="false">Không hoạt động</option>
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
