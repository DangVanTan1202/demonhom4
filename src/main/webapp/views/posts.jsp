<%@ page import="com.mang.model.Post" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sach bai viett</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            padding: 30px;
        }

        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
            text-transform: uppercase;
        }

        .post-card {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.05);
            transition: box-shadow 0.3s;
        }

        .post-card:hover {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .post-card b {
            font-size: 16px;
            color: #34495e;
        }

        .post-card i {
            font-size: 18px;
            color: #2980b9;
            display: block;
            margin-top: 5px;
        }

        .post-card p {
            margin: 8px 0;
            color: #555;
        }

        .post-card p:last-child {
            font-size: 13px;
            color: #999;
        }

        .actions {
            margin-top: 30px;
            text-align: center;
        }

        .actions a {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.2s ease;
        }

        .actions a:hover {
            background-color: #2980b9;
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
        
<h2>Danh sach bai viet</h2>
<div class="header">
        <div style="display: flex; gap: 10px;">
        <form action="${pageContext.request.contextPath}/search" method="get" style="display: flex;">
            <input type="text" name="keyword" placeholder="Tim bai viet..." style="padding: 5px; border: 1px solid #ddd;">
            <button type="submit" style="padding: 5px 10px; background: #1da1f2; color: white; border: none;">Tim kiem</button>
        </form>
        <a href="${pageContext.request.contextPath}/" class="btn">Trang chu</a>
    </div>       
    </div>
<%
    List<Post> posts = (List<Post>) request.getAttribute("posts");
    for (Post p : posts) {
%>
    <div class="post-card">
        <b><%=p.getUsername()%></b>
        <i><%=p.getTitle()%></i>
        <p><%=p.getBody()%></p>
        <p><strong>Trang thai:</strong> <%=p.getStatus()%></p>
        <p><small><%=p.getCreatedAt()%></small></p>
    </div>
<% } %>

<div class="actions">
    <a href="<%=request.getContextPath()%>/views/form_post.jsp">dang bai viet</a>
    <a href="following">Xem nguoi dang theo doi</a>
</div>

</body>
</html>
