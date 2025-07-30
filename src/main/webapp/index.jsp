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
    </style>
</head>
<body>

    <h2>Chao moi nguoi</h2>
    <a href="<%=request.getContextPath()%>/posts">Xem bai viet</a>
	<a href="<%=request.getContextPath()%>/views/form_post.jsp">Dang bai</a>
	<a href="<%=request.getContextPath()%>/following">Danh sach theo doi</a>	
</body>
</html>
