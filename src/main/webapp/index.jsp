<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>he lo</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h2 {
            color: #2c3e50;
            font-size: 28px;
            margin-bottom: 30px;
        }

        a {
            display: inline-block;
            padding: 12px 24px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #2980b9;
        }
        
        .app-header {
            background-color: white;
            border-bottom: 1px solid #e6ecf0;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 100;
        }
        
        .user-info {
            display: flex;
            align-items: center;
        }
        
        .username-display {
            margin-right: 15px;
            font-weight: bold;
            color: #1da1f2;
        }
        
        .logout-btn {
            background-color: #e0245e;
            color: white;
            border: none;
            border-radius: 20px;
            padding: 5px 15px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <h2>Social DEMO</h2>
    <c:if test="${not empty sessionScope.currentUser}">
        <div class="app-header">
            <div class="user-info">
                <span class="username-display">
                    Xin chào, ${sessionScope.currentUser.username}!
                </span>
                <a href="logout" class="logout-btn">Logout</a>
            </div>
        </div>

        <a href="<%=request.getContextPath()%>/posts">Xem bài viết</a>
        <a href="<%=request.getContextPath()%>/views/form_post.jsp">Đăng bài</a>
        <a href="<%=request.getContextPath()%>/following">Danh sách theo dõi</a>    
    </c:if>

    <c:if test="${empty sessionScope.currentUser}">
        <a href="<%=request.getContextPath()%>/login">Đăng nhập</a>
    </c:if>	
</body>
</html>
