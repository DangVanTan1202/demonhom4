package com.mang.controller;

import com.mang.dao.PostDAO;
import com.mang.model.Post;
import com.mang.model.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/posts")
public class PostServelet {

    @GetMapping
    public String listPosts(Model model) {
        try {
            PostDAO dao = new PostDAO();
            List<Post> posts = dao.getAllPosts();
            model.addAttribute("posts", posts);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "posts"; // sẽ hiển thị file /views/posts.jsp
    }

    @PostMapping("/post")
    public String createPost(
            @RequestParam("title") String title,
            @RequestParam("body") String body,
            HttpSession session) throws Exception {
        
        User currentUser = (User) session.getAttribute("currentUser");
        if (currentUser == null) {
            return "redirect:/login";
        }
        
        PostDAO postDao = new PostDAO();
        postDao.addPost(title, body, currentUser.getId());
        return "redirect:/posts";
    }
}
