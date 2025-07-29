package com.mang.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/social_db?useSSL=false&serverTimezone=UTC",
            "root", "" // mật khẩu để trống nếu dùng XAMPP mặc định
        );
    }
}
