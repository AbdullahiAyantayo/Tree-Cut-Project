<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Enhanced Post Note</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enhanced Post Note</h2>
        <div class="error-message">${errorMessage}</div>
        <form action="processEnhancedNote" method="post">
            <div class="form-group">
                <label for="note">Note:</label>
                <textarea name="note" rows="4" cols="50" placeholder="Enter your note here" onfocus="this.placeholder=''"></textarea>
            </div>
            <div class="form-group">
                <label for="priority">Priority:</label>
                <select name="priority">
                    <option value="low">Low</option>
                    <option value="medium">Medium</option>
                    <option value="high">High</option>
                </select>
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <input type="text" name="category" placeholder="Enter category">
            </div>
            <div class="form-group">
                <input type="submit" value="Post Note">
            </div>
        </form>
        <p><a href="login.jsp" target="_self">Return to Login Page</a></p>
    </div>
</body>
</html>
