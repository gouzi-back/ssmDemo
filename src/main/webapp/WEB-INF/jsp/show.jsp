<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/2/1
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>
    #hh{color: red}
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <div id="hh">
       username:${user.userName}<br/>
       userPassword:${user.userPassword}<br/>
       birthday:${user.birthday}<br/>
       phone:${user.phone}<br/>
       creationDate:${user.creationDate}<br/>
       modifyDate:${user.modifyDate}<br/>
   </div>

</body>
</html>
