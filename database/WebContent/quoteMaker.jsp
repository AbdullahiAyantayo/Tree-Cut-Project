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

        input[type="text"] {
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
        <form action="quoted">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Price: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="price" value="$00.00" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Time: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="time" value="1:00:00" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Note: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="note" value="Pending" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="5">
                        <input type="submit" value="Create" />
                    </td>
                </tr>
            </table>
            <a href="login.jsp" target="_self">Return to Login Page</a>
        </form>
    </div>
</body>

</html>
