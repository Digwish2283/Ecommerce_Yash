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
      <form method="POST" action="login">

                          <div class="form-group">
                                           <label for="email">Email address</label>
                                           <input name = "useremail"type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">

                                         </div>
                                         <div class="form-group">
                                           <label for="password">Password</label>
                                           <input name="userpassword" type="password" class="form-control" id="password" placeholder="Password">
                                         </div>
                          <div class="text-center ">
                              <button class="btn mychoice me-3 mt-3" type="submit">Login</button>
                              <button class="btn btn-outline-warning mt-3" type="reset">Reset</button>


                          </div>
                      </form>
</body>
</html>
