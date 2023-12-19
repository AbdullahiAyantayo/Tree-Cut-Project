<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        p {
            color: #ff0000;
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th,
        td {
            padding: 10px;
            text-align: center;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        a {
            display: block;
            margin-top: 10px;
            text-align: center;
            color: #3366cc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div align="center">
        <p>${errorOne}</p>
        <p>${errorTwo}</p>
        <form action="register">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Username: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="email" value="johnjoe@gmail.com" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>First Name: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="firstName" value="FirstName" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Last Name: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="lastName" value="LastName" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Credit Card: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="creditCard" value="xxxxxxxxxxxxxxxx" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Phone Number: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="phoneNumber" value="xxxxxxxxxx" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Password: </th>
                    <td align="center" colspan="3">
                        <input type="password" name="password" value="password" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Password Confirmation: </th>
                    <td align="center" colspan="3">
                        <input type="password" name="confirmation" value="password" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="5">
                        <input type="submit" value="Register" />
                    </td>
                </tr>
            </table>
            <a href="login.jsp" target="_self">Return to Login Page</a>
        </form>
    </div>
</body>

</html>
