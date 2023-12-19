<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Enhanced Post Note</title>
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
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        p {
            margin-bottom: 20px;
            color: #ff0000; /* Red color for error message */
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-top: 5px;
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
            margin-top: 20px;
            text-decoration: none;
            color: #3366cc;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div>
        <p>${errStr}</p>
        <form action="postDavidBillNote" method="post">
            <table>
                <tr>
                    <th>Note:</th>
                    <td colspan="3">
                        <input type="text" name="note" size="150" value="Pending" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Discount:</th>
                    <td colspan="3">
                        <input type="text" name="discount" size="10" value="Enter Percentage" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <input type="submit" value="Post"/>
                    </td>
                </tr>
            </table>
        </form>
        <a href="login.jsp" target="_self">Return to Login Page</a>
    </div>
</body>

</html>
