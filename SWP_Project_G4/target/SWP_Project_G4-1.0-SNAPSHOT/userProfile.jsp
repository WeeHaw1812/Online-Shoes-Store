<%@page import="Models.Account"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="head.jsp">
            <jsp:param name="title" value="Profile"/>
        </jsp:include>
        <link rel="stylesheet" href="<%out.print(request.getContextPath());%>/public/assets/css/userProfile.css">
    </head>


    <body>
        <h1>User Profile</h1>
        <%
            Account acc = (Account) session.getAttribute("userInformation");
        %>

        <form method="post" action="UserController">
            <div class="row">
                <div class="col-md-6">
                    <div class="mt-4"> <label for="ID" style="margin-right: 70px;">ID</label> <input class="ml-2" style=" margin-right: -1px; width: 200px; height: 30px;" readonly="true" type="text" name="ID" value="<%= acc.getAccountID()%>" id="ID"></div>
                    <div class="mt-4">Avatar<input style=" margin-left: 50px; width: 200px; height: 30px;" type="text"
                                                   name="Avatar" value="<%= acc.getAvatar()%>" id=""></div>
                    <div class="mt-4">Username<input class="ml-4" style="width: 200px; height: 30px;" readonly="true" type="text"
                                                     name="Username" value="<%= acc.getUsername()%>" id=""></div>
                    <div class="mt-4">Password<input style="margin-left: 30px;width: 200px; height: 30px;" type="text"
                                                     name="Password" value="<%= acc.getPassword()%>" id=""></div>
                    <div class="mt-4">Email<input  readonly="true" style="margin-left: 58px;width: 200px; height: 30px;" type="text"
                                                   name="Email" value="<%= acc.getEmail()%>" id=""></div>
                </div>
                <div class="col-md-6">
                    <div class="mt-4">FirstName<input style="margin-left: 20px; width: 200px; height: 30px;"
                                                      type="text" name="FirstName" value="<%= acc.getFirstName()%>" id=""></div>
                    <div class="mt-4">LastName<input style="margin-left: 22px; width: 200px; height: 30px;" type="text"
                                                     name="LastName" value="<%= acc.getLastName()%>" id=""></div>
                    <div class="mt-4"> Gender
                        <select style="margin-left: 37px; width: 200px; height: 30px;" name="Gender" value="<%= acc.getGender()%>" required="required" id="gender">
                            <option value="Select">Select Gender:</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select></div>
                    <div class="mt-4">Birthday<input style="margin-left: 35px; width: 200px; height: 30px;"
                                                     type="date" name="Birthday" value="<%= acc.getBirthday()%>" id=""></div>

                </div>
                <div class="mt-4" style="text-align: center; margin-right: 140px"> <input type="submit" value="Update User" name="btnUpdateUser"></div>
            </div>
        </form>
        <script>
            // ??i 5 giây tr??c khi xóa div
            setTimeout(function () {
                var messageDiv = document.getElementById('message');
                messageDiv.parentNode.removeChild(messageDiv);
            }, 5000);
        </script>
        <%@include file="foot.jsp" %>
        <%@include file="popUpMessage.jsp" %>
    </body>
</html>
