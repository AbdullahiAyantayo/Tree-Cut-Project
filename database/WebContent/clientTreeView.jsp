<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Enhanced Tree List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
        }

        caption {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        tr {
            text-align: center;
        }
    </style>
</head>

<body>
    <div align="center">
        <table>
            <caption><h2>List of Trees</h2></caption>
            <tr>
                <th>Image 1</th>
                <th>Image 2</th>
                <th>Image 3</th>
                <th>Address</th>
                <th>Distance</th>
                <th>Width</th>
                <th>Height</th>
                <th>Tree ID</th>
                <th>Request ID</th>
                <th>Cut Status</th>
                <th>Cut Date</th>
            </tr>
            <c:forEach var="tree" items="${listTree}">
                <tr>
                    <td><c:out value="${tree.image1}" /></td>
                    <td><c:out value="${tree.image2}" /></td>
                    <td><c:out value="${tree.image3}" /></td>
                    <td><c:out value="${tree.address}" /></td>
                    <td><c:out value="${tree.distance}" /></td>
                    <td><c:out value="${tree.width}" /></td>
                    <td><c:out value="${tree.height}" /></td>
                    <td><c:out value="${tree.treeID}" /></td>
                    <td><c:out value="${tree.requestID}" /></td>
                    <td><c:out value="${tree.cutStatus}" /></td>
                    <td><c:out value="${tree.date}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>

</html>
