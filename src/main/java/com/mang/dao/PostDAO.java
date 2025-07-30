package com.mang.dao;

import com.mang.model.Post;
import com.mang.util.DBConnection;

import java.sql.*;
import java.util.*;

public class PostDAO {
    public void addPost(String title, String body) throws Exception {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO posts(title, body, user_id, status) VALUES (?, ?, 1, 'public')";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, title);
                ps.setString(2, body);
                ps.executeUpdate();
            }
        }
    }

    public List<Post> getAllPosts() throws Exception {
        List<Post> list = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT p.*, u.username FROM posts p JOIN users u ON p.user_id = u.id ORDER BY p.id DESC";
            try (Statement st = conn.createStatement();
                 ResultSet rs = st.executeQuery(sql)) {
                while (rs.next()) {
                    Post p = new Post();
                    p.setId(rs.getInt("id"));
                    p.setTitle(rs.getString("title"));
                    p.setBody(rs.getString("body"));
                    p.setUsername(rs.getString("username"));
                    p.setStatus(rs.getString("status"));
                    p.setCreatedAt(rs.getTimestamp("created_at"));
                    list.add(p);
                }
            }
        }
        return list;
    }
}
