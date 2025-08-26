<%--
  Created by IntelliJ IDEA.
  User: tanishq.kumar
  Date: 8/25/2025
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
      <form method="POST" action="register">
         <div class="form-group">
         <label for="name">User Name</label>
         <input name="name" type="text" class="form-control" id="name" aria-describedby="nameHelp" placeholder="Enter User Name">

         </div>
    <div class="form-group">
        <label for="email">Email address</label>
        <input name = "email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">

    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input name="password" type="password" class="form-control" id="password" placeholder="Password">
        <small class="form-text" style="color:red">your password must be minimum 4 char long</small>
    </div>


    <div class="container text-center">
        <button class="btn mychoice me-3 mt-3" type="submit"> Register</button>
        <button class="btn btn-outline-warning mt-3">Reset</button>


     </form>
</body>
</html>
