<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>dang bai viet</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f9;
            padding: 40px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
            text-transform: uppercase;
        }

        .form-container {
            background-color: #ffffff;
            max-width: 600px;
            margin: 0 auto;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #34495e;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        textarea:focus {
            border-color: #3498db;
            outline: none;
        }

        textarea {
            resize: vertical;
        }

        .form-actions {
            text-align: center;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 15px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
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

<h2>Đăng bài viết</h2>

<div class="form-container">
    <form method="post" action="<%=request.getContextPath()%>/posts">
        <div class="form-group">
            <label for="title">Tiêu đề:</label>
            <input type="text" id="title" name="title" required />
        </div>

        <div class="form-group">
            <label for="body">Nội dung:</label>
            <textarea id="body" name="body" rows="5" required></textarea>
        </div>

        <div class="form-actions">
            <input type="submit" value="Đăng bài " />
        </div>
    </form>
</div>

<div class="links">
    <a href="<%=request.getContextPath()%>/posts">Xem bài viết</a>
    <a href="following.jsp">Xem người đang theo dõi</a>
    <a href="${pageContext.request.contextPath}/" class="btn">Trang chủ</a>
</div>

</body>
</html>
