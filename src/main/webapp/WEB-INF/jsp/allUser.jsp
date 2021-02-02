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
    <title>显示用户</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->

    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->

    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <script  type="text/javascript">
            function ok(){
                $.post({
                    url:"${pageContext.request.contextPath}/user/seleteUById",
                    data:{"seleteUser":$("hh").val()},
                    success:function (data){
                        console.log(data)
                    }
                })
            }


    </script>

</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>-----------所有用户-----------</h1>
            </div>
        </div>
    </div>
    <%--新增用户--%>
    <div class="row">
        <div class="col-md-4 column">

            <%--add--%>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/toAddUser">新增用户</a>
            <a  class="btn btn-primary" href="${pageContext.request.contextPath}/user/allUser">显示全部用户用户</a>
        </div>

        <div class="col-md-8 column">


            <%--条件查询--%>
           <form class="form-inline" action="${pageContext.request.contextPath}/user/seleteUById" method="post" style="float: right">
               <span style="color: red ;font-weight: bold">${error}</span>
               <input type="text"   class="form-control" placeholder="请输入要查询的用户"  name="seleteUser"  >
               <input  type="submit"  value="查询" class="btn btn-primary">
           </form>
        </div>
    </div>
    <%--查询全部用户--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
           <table class="table table-hover table-striped">
               <thead>
                <tr>
                    <th>用户ID</th>
                    <th>用户编号</th>
                    <th>用户姓名</th>
                    <th>用户密码</th>
                    <th>出生日期</th>
                    <th>用户电话</th>
                    <th>用户地址</th>
                    <th>操作</th>
                </tr>
               <%--用户从数据库中查询出来 从这个list中遍历--%>
               </thead>
                    <c:forEach var="user" items="${list}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.userCode}</td>
                            <td>${user.userName}</td>
                            <td>${user.userPassword}</td>
                            <td><fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/> </td>
                            <td>${user.phone}</td>
                            <td>${user.address}</td>
                            <td>

                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/toUpdateUser?id=${user.id}">修改</a>
                                &nbsp;| &nbsp;
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/deleteBook/${user.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
               <tbody>

               </tbody>
           </table>
        </div>

    </div>
</div>


</body>
</html>
