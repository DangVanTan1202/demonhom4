package com.mang.dao;

import com.mang.model.User;
import com.mang.util.DBConnection;

import java.sql.*;
import java.util.*;

public class FollowDAO {
    public List<User> getFollowedUsers(int userId) {
        List<User> list = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT u.id, u.username FROM users u " +
                         "JOIN follows f ON u.id = f.followed_user_id " +
                         "WHERE f.following_user_id = ?";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setInt(1, userId);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    User u = new User();
                    u.setId(rs.getInt("id"));
                    u.setUsername(rs.getString("username"));
                    list.add(u);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
