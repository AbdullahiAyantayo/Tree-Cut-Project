<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Tree Submission</title>
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
            margin-top: 20px;
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

        input[type="file"],
        input[type="text"] {
            padding: 8px;
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            font-size: 14px;
            cursor: pointer;
            border: none;
            border-radius: 3px;
        }

        a {
            display: inline-block;
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
        <form action="treeSubmit" required>
            <h2>Tree 1</h2>
            <table border="1" cellpadding="5">
                <tr>
                    <th>Image 1:</th>
                    <td align="center" colspan="3">
                        <input type="file" name="image1" accept="image/*" required>
                    </td>
                </tr>
                <tr>
                    <th>Image 2:</th>
                    <td align="center" colspan="3">
                        <input type="file" name="image2" accept="image/*" required>
                    </td>
                </tr>
                <tr>
                    <th>Image 3:</th>
                    <td align="center" colspan="3">
                        <input type="file" name="image3" accept="image/*" required>
                    </td>
                </tr>
                <tr>
                    <th>Address:</th>
                    <td align="center" colspan="3">
                        <input type="text" name="address" size="48" value="123 street, city, state" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Distance (feet):</th>
                    <td align="center" colspan="3">
                        <input type="text" name="distance" size="11" value="ex. 12.5" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Width (feet):</th>
                    <td align="center" colspan="3">
                        <input type="text" name="width" size="11" value="ex. 12.5" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Height (feet):</th>
                    <td align="center" colspan="3">
                        <input type="text" name="height" size="11" value="ex. 12.5" onfocus="this.value=''" required>
                    </td>
                </tr>
            </table>
            <td align="center" colspan="5">
                <input type="submit" value="Request" />
            </td>
        </form>
        <a href="userView.jsp" target="_self">Return to Client Page</a>
    </div>
</body>

</html>
