package com.mang.controller;

import com.mang.dao.FollowDAO;
import com.mang.model.User;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class FollowController {
    private FollowDAO followDAO = new FollowDAO();

    @GetMapping("/following")
    public String showFollowedUsers(Model model, HttpSession session) {
        // Lấy user đang đăng nhập từ session
        User currentUser = (User) session.getAttribute("currentUser");

        // Kiểm tra nếu chưa đăng nhập, chuyển hướng về trang login
        if (currentUser == null) {
            return "redirect:/login";
        }

        // Lấy danh sách người đang theo dõi
        int currentUserId = currentUser.getId();  // đảm bảo User có phương thức getId()
        List<User> followedUsers = followDAO.getFollowedUsers(currentUserId);

        model.addAttribute("followedUsers", followedUsers);
        return "following"; // views/following.jsp
    }
}
