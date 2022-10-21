<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>액션태그 param</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String userName = request.getParameter("name");
  out.print(userName);
%>
<div class="container mt-5">
  <div class="row">
    <div class="col-sm-4 mx-auto">
      <div class="d-grid gap-3 border rounded-2 p-3">
        <div>
          <label class="form-label">아이디 : </label>
          <input type="text" class="form-control-plaintext" id="user-id" readonly value='<%=request.getParameter("id")%>'>
        </div>
        <div>
          <label class="form-label" for="user-name">이름 : </label>
          <input type="text" class="form-control-plaintext" id="user-name" readonly value='<%=java.net.URLDecoder.decode(userName, "UTF-8")%>'>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>






