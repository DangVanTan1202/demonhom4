<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<body>

</body>
</html>