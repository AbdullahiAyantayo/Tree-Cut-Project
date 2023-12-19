<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Tree Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        div {
            text-align: center;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th,
        td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        input {
            padding: 8px;
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        a {
            display: block;
            margin-top: 10px;
            color: #3366cc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <div>
        <p>${errorOne}</p>
        <p>${errorTwo}</p>
        <h2>Enter Info For The First Tree</h2>
        <form action="submitTree">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Image 1:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="image1" value="Pending" onfocus="this.value=''">
                    </td>
                </tr>
                <tr>
                    <th>Image 2:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="image2" value="Pending" onfocus="this.value=''">
                    </td>
                </tr>
                <tr>
                    <th>Image 3:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="image3" value="Pending" onfocus="this.value=''">
                    </td>
                </tr>
                <tr>
                    <th>Address: </th>
                    <td align="center" colspan="3">
                        <input type="text" name="address" value="123 street, city, state" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Distance (feet): </th>
                    <td align="center" colspan="3">
                        <input type="text" name="distance" value="ex. 12.5" onfocus="this.value=''">
                    </td>
                </tr>
                <tr>
                    <th>Width (feet): </th>
                    <td align="center" colspan="3">
                        <input type="text" name="width" value="ex. 12.5" onfocus="this.value=''">
                    </td>
                </tr>
                <tr>
                    <th>Height (feet): </th>
                    <td align="center" colspan="3">
                        <input type="text" name="height" value="ex. 12.5" onfocus="this.value=''">
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="5">
                        <input type="submit" value="Add Tree" />
                    </td>
                </tr>
            </table>
            <a href="login.jsp" target="_self">Return to Login Page</a>
        </form>
    </div>

</body>

</html>
