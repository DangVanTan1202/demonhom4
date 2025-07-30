package com.mang.dao;

import com.mang.model.Post;
import com.mang.util.DBConnection;

import java.sql.*;
import java.util.*;

public class SearchDAO {

	public List<Post> searchPosts(String keyword) {
        List<Post> posts = new ArrayList<>();
        // Liệt kê rõ ràng các cột trong truy vấn để dễ đọc và bảo trì hơn
        String sql = "SELECT p.id, p.title, p.body, p.user_id, p.status, p.created_at, u.username " +
                     "FROM posts p " +
                     "JOIN users u ON p.user_id = u.id " +
                     "WHERE p.title LIKE ? " +
                     "ORDER BY p.created_at DESC";
        
        // Sử dụng try-with-resources để đảm bảo tài nguyên được đóng tự động
        try (Connection conn = DBConnection.getConnection(); // Đã thêm dấu chấm phẩy
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            // Xử lý keyword: nếu null hoặc rỗng, tìm kiếm tất cả
            String searchKeyword = (keyword != null && !keyword.isEmpty()) ? "%" + keyword + "%" : "%%";
            stmt.setString(1, searchKeyword);
            
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getInt("id"));
                post.setTitle(rs.getString("title"));
                post.setBody(rs.getString("body"));
                post.setUserId(rs.getInt("user_id"));
                post.setStatus(rs.getString("status"));
                post.setCreatedAt(rs.getTimestamp("created_at"));
                post.setUsername(rs.getString("username"));
                posts.add(post);
            }
        } catch (SQLException e) {
            // In stack trace ra console.
            // Trong môi trường sản phẩm, nên dùng một hệ thống ghi log chuyên nghiệp.
            e.printStackTrace(); 
        } catch (Exception e) {
            // Bắt các ngoại lệ khác có thể xảy ra từ DBConnection.getConnection()
            e.printStackTrace();
        }
        return posts;
    }
}