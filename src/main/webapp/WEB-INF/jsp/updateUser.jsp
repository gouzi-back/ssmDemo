<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/2/1
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>修改用户</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->

    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->

    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>-----------修改用户-----------</h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
        <div class="form-group">
            <label for="u0">用户编号：</label>
                <%--            --%>
            <input type="hidden" name="id" class="form-control" id="u0" value="${user.id}"  required>
        </div>
        <div class="form-group">
            <label for="u">用户编号：</label>
            <input type="text" name="userCode" class="form-control" id="u" value="${user.userCode}"  required>
        </div>
        <div class="form-group">
            <label for="u1">用户姓名：</label>
            <input type="text" name="userName" class="form-control" id="u1" value="${user.userName}" required>
        </div>
        <div class="form-group">
            <label for="u2">用户密码：</label>
            <input type="text" name="userPassword" class="form-control" id="u2" value="${user.userName}" required>
        </div>
        <div class="form-group">
            <label for="u3">用户性别：</label>
            <input type="text" name="gender" class="form-control" id="u3"  value="${user.gender}" required>
        </div>
     <%--   <div class="form-group">
            <label for="u4">出生日期：</label>
            <input type="date" name="birthday" class="form-control" id="u4" required>
        </div>--%>
        <div class="form-group">
            <label for="u5">用户电话：</label>
            <input type="text" name="phone" class="form-control" id="u5" value="${user.phone}"  required>
        </div>
        <div class="form-group">
            <label for="u6">用户地址：</label>
            <input type="text" name="address" class="form-control" id="u6" value="${user.address}" required>
        </div>
        <div class="form-group">
            <label for="u7">用户角色：</label>
            <input type="text" name="userRole" class="form-control" id="u7" value="${user.userRole}" required>
        </div>
        <div class="form-group">
            <label for="u8">创造者：</label>
            <input type="text" name="createdBy" class="form-control" id="u8"  value="${user.createdBy}" required>
        </div>
<%--        <div class="form-group">
            <label for="u9">创建时间：</label>
            <input type="date" name="creationDate" class="form-control" id="u9" required>
        </div>--%>
        <div class="form-group">

            <input type="submit" class="form-control" value="修改用户">
        </div>


    </form>


</div>


</body>
</html>
