<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .alert {
            padding: 20px;
            background-color: green;
            color: white;
        }

        .success {
            margin-left: 15px;
            color: white;
            font-weight: bold;
            float: right;
            font-size: 22px;
            line-height: 20px;
            cursor: pointer;
            transition: 0.3s;
        }

        .success:hover {
            color: black;
        }
    </style>
</head>
<body>

<div class="alert">
    <span class="success" onclick="this.parentElement.style.display='none';">&times;</span>
    <strong>Success!</strong>
</div>

<%
    String userName = (String) request.getAttribute("userName");
    String fullName = (String) request.getAttribute("fullName");
    String email = (String) request.getAttribute("email");
    String phone = (String) request.getAttribute("phone");
    String birthday = (String) request.getAttribute("birthday");
%>
<h1>UserName: <%= userName%></h1>
<h1>Full Name: <%= fullName %></h1>
<h1>Email:  <%= email%></h1>
<h1>Phone: <%= phone%></h1>
<h1>Birthday: <%= birthday%></h1>




</body>
</html>
