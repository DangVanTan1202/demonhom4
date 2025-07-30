package com.mang.controller;

import com.mang.dao.FollowDAO;
import com.mang.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class FollowController {
    private FollowDAO followDAO = new FollowDAO();

    @GetMapping("/following")
    public String showFollowedUsers(Model model) {
        int currentUserId = 1; // giả lập user đăng nhập
        List<User> followedUsers = followDAO.getFollowedUsers(currentUserId);

        model.addAttribute("followedUsers", followedUsers);
        return "following"; // views/following.jsp
    }
}
