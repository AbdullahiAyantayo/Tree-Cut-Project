<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Tree Request</title>
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

        h2 {
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
        <h2>Enter Info For The First Tree</h2>
        <form action="submitRequest">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Note: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="note" value="Pending" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Image 1:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="image1" value="pending..." onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Image 2:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="image2" value="pending..." onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Image 3:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="image3" value="pending..." onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Address: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="address" value="default address" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Distance (meters): </th>
                    <td align="center" colspan="3">
                        <input type="text" name="distance" value="2.0" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Width (meters): </th>
                    <td align="center" colspan="3">
                        <input type="text" name="width" value="2.0" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Height (meters): </th>
                    <td align="center" colspan="3">
                        <input type="text" name="height" value="2.0" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="8">
                        <input type="submit" value="Open A Request" />
                    </td>
                </tr>
            </table>
            <a href="login.jsp" target="_self">Back to Login Page</a>
        </form>
    </div>
</body>

</html>
