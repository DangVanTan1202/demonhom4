<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách đang theo dõi</title>
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
            max-width: 600px;
            margin: 0 auto;
        }

        li {
            background-color: #fff;
            padding: 12px 20px;
            margin-bottom: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: background-color 0.2s ease;

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        li:hover {
            background-color: #e6f0ff;
        }

        .follow-btn {
            background-color: #1da1f2;
            color: white;
            border: none;
            border-radius: 20px;
            padding: 6px 14px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
        }

        .follow-btn:hover {
            background-color: #0d8bd9;
        }

        .links {
            text-align: center;
            margin-top: 25px;
        }

        .links a {
            display: inline-block;
            margin: 0 10px;
            color: #3498db;
            font-weight: bold;
            text-decoration: none;
            transition: color 0.2s;
        }

        .links a:hover {
            color: #1f5f8b;
        }
    </style>
</head>
<body>

<h2>Danh sách người bạn đang theo dõi</h2>

<ul>
    <c:forEach var="u" items="${followedUsers}">
        <li>
            ${u.username}
            <button class="follow-btn" type="button">Follow</button>
        </li>
    </c:forEach>
</ul>

<div class="links">
    <a href="<%=request.getContextPath()%>/views/form_post.jsp">Đăng bài viết</a>
    <a href="posts">Xem bài viết</a>
    <a href="${pageContext.request.contextPath}/" class="btn">Trang chủ</a>
</div>

</body>
</html>
