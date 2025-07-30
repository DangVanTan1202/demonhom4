<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sach dang theo doi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f9f9f9;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            max-width: 500px;
            margin: 0 auto;
        }

        li {
            background-color: #fff;
            padding: 12px 20px;
            margin-bottom: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: background-color 0.2s ease;
        }

        li:hover {
            background-color: #e6f0ff;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 30px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            transition: color 0.2s;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

<h2>Danh sach nguoi ban dang theo doi</h2>

<ul>
    <c:forEach var="u" items="${followedUsers}">
        <li>${u.username}</li>
    </c:forEach>
</ul>

<a href="posts">xem bai viet</a>

</body>
</html>
