package com.mang.controller;

import com.mang.dao.UserDAO;
import com.mang.model.User;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthController {

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String login(
            @RequestParam("username") String username,
            HttpSession session,
            Model model) throws Exception {
        
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByUsername(username);
        
        if (user != null) {
            // Lưu thông tin user vào session
            session.setAttribute("currentUser", user);
            return "redirect:/";
        } else {
            model.addAttribute("error", "Username not found");
            return "login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}