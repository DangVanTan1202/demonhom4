package com.mang.controller;

import com.mang.dao.PostDAO;
import com.mang.model.Post;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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

    @PostMapping
    public String addPost(@RequestParam("title") String title,
                          @RequestParam("body") String body) {
        try {
            PostDAO dao = new PostDAO();
            dao.addPost(title, body);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/posts";
    }
}
