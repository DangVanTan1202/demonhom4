<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Social Demo - Trang chủ</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7fa;
            color: #2c3e50;
        }

        .header {
            background-color: #ffffff;
            border-bottom: 1px solid #e0e0e0;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .app-title {
            font-size: 24px;
            font-weight: bold;
            color: #3498db;
        }

        .user-info {
            display: flex;
            align-items: center;
        }

        .username-display {
            margin-right: 20px;
            color: #1da1f2;
            font-weight: 600;
        }

        .logout-btn {
            background-color: #e74c3c;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #c0392b;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 80px;
        }

        .actions {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 30px;
        }

        .action-link {
            padding: 14px 26px;
            background-color: #3498db;
            color: white;
            border-radius: 10px;
            text-decoration: none;
            font-size: 16px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .action-link:hover {
            background-color: #2980b9;
        }

        .login-box {
            margin-top: 150px;
            text-align: center;
        }

        .login-box a {
            padding: 14px 26px;
            background-color: #1da1f2;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 10px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .login-box a:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>

<c:if test="${not empty sessionScope.currentUser}">
    <div class="header">
        <div class="app-title">Social Demo</div>
        <div class="user-info">
            <span class="username-display">Xin chào, ${sessionScope.currentUser.username}!</span>
            <a href="logout" class="logout-btn">Đăng xuất</a>
        </div>
    </div>

    <div class="container">
        <h2>Social Demo</h2>
        <div class="actions">
            <a class="action-link" href="<%=request.getContextPath()%>/posts">Xem bài viết</a>
            <a class="action-link" href="<%=request.getContextPath()%>/views/form_post.jsp">Đăng bài viết</a>
            <a class="action-link" href="<%=request.getContextPath()%>/following">Danh sách theo dõi</a>
        </div>
    </div>
</c:if>

<c:if test="${empty sessionScope.currentUser}">
    <div class="login-box">
        <h2>Chào mừng bạn đến với Social Demo!</h2>
        <a href="<%=request.getContextPath()%>/login">Đăng nhập</a>
    </div>
</c:if>

</body>
</html>
