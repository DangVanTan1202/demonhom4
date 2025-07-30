package com.mang.controller;

import com.mang.dao.SearchDAO;
import com.mang.model.Post;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {

    private SearchDAO searchDAO = new SearchDAO();

    @GetMapping("/search")
    public String searchPosts(@RequestParam("keyword") String keyword, Model model) {
        List<Post> posts = searchDAO.searchPosts(keyword);
        model.addAttribute("posts", posts);
        model.addAttribute("keyword", keyword);
        return "search-results";
    }
}