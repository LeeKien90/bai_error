<%--
  Created by IntelliJ IDEA.
  User: askih
  Date: 12/12/2022
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Admin</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="#">Home</a>
            <a class="nav-item nav-link" href="<%=request.getContextPath()%>/home/getAll">Catalog</a>
            <a class="nav-item nav-link" href="<%=request.getContextPath()%>/home/getAllProduct">Product</a>
            <a class="nav-item nav-link" href="#">User</a>
        </div>
    </div>
</nav>
