package com.mang.controller;

import com.mang.dao.PostDAO;
import com.mang.model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/posts")
public class PostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    	 System.out.println("===> ĐÃ VÀO PostServlet");
        try {
            PostDAO dao = new PostDAO();
            List<Post> posts = dao.getAllPosts();
            request.setAttribute("posts", posts);
            request.getRequestDispatcher("/views/posts.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String title = request.getParameter("title");
        String body = request.getParameter("body");

        try {
            PostDAO dao = new PostDAO();
            dao.addPost(title, body);
            response.sendRedirect("posts");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
