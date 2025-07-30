<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Kết quả tìm kiếm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f8fa;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #e6ecf0;
            margin-bottom: 20px;
        }
        .btn {
            padding: 8px 16px;
            background-color: #1da1f2;
            color: white;
            text-decoration: none;
            border-radius: 20px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0d8bd9;
        }
        .post { 
            background-color: white;
            border: 1px solid #e6ecf0; 
            padding: 15px; 
            margin-bottom: 15px; 
            border-radius: 10px; 
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }
        .post h3 { 
            margin-top: 0; 
            color: #14171a;
            font-size: 18px;
        }
        .post .body { 
            color: #14171a; 
            font-size: 16px;
            line-height: 1.5;
            margin: 10px 0;
        }
        .post .meta { 
            color: #657786; 
            font-size: 14px; 
            border-top: 1px solid #e6ecf0; 
            padding-top: 10px;
            margin-top: 10px;
        }
        .empty-feed {
            text-align: center;
            padding: 40px;
            color: #657786;
            background-color: white;
            border-radius: 10px;
            border: 1px solid #e6ecf0;
        }
        .username {
            color: #1da1f2;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Kết quả tìm kiếm</h1>
        <div style="display: flex; gap: 10px;">
        <form action="${pageContext.request.contextPath}/search" method="get" style="display: flex;">
            <input type="text" name="keyword" placeholder="Tim bai viet..." style="padding: 5px; border: 1px solid #ddd;">
            <button type="submit" style="padding: 5px 10px; background: #1da1f2; color: white; border: none;">Tim kiem</button>
        </form>
        <a href="${pageContext.request.contextPath}/" class="btn">Trang chu</a>
    </div>       
    </div>

    <c:choose>
        <c:when test="${empty posts}">
            <div class="no-results">
                <h2>Không tìm thấy bài viết nào về "${keyword}"</h2>
                <p>Hãy thử tìm từ khóa khác.</p>
            </div>
        </c:when>
        <c:otherwise>
            <div class="results-count">
                Tìm thấy ${posts.size()} bài viết về "${keyword}"
            </div>
            
            <c:forEach items="${posts}" var="post">
                <div class="post">
                    <h3 class="post-title">${post.title}</h3>
                    <div class="post-body">${post.body}</div>
                    <div class="post-meta">
                        Đăng bởi <span class="username">${post.username}</span> 
                        vào <fmt:formatDate value="${post.createdAt}" pattern="dd MMM yyyy, HH:mm"/>
                    </div>
                </div>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</body>
</html>