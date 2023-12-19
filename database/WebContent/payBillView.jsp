<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Pay Bill</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        h2 {
            text-align: center;
            color: #3366cc;
        }

        p {
            text-align: center;
            color: #cc0000;
        }

        form {
            margin-top: 20px;
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        td {
            padding: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0 15px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            margin: 8px 0;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        a {
            display: block;
            margin-top: 20px;
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
        <p>${cardStr}</p>
        <form action="payBill" method="post">
            <table border="1" cellpadding="5">
                <tr>
                    <td align="center" colspan="3">
                        <h2>BillID: '${bID}'</h2>
                    </td>
                </tr>

                <tr>
                    <td align="center" colspan="3">
                        <h2>Price: '${price}'</h2>
                    </td>
                </tr>

                <tr>
                    <td align="center" colspan="3">
                        <input type="text" name="cardNum" maxlength="16" placeholder="16-Digit Card Number (NO SPACES)" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <input type="submit" value="Pay" />
                    </td>
                </tr>
            </table>
            <a href="login.jsp" target="_self">Return to Login Page</a>
        </form>
    </div>
</body>

</html>
