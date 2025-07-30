package com.mang.model;

public class Post {
    private int id;
    private String title;
    private String body;
    private String username;
    private String status;
    private String created_at;
    
    // Getter và Setter cho id
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    // Getter và Setter cho title
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    // Getter và Setter cho body
    public String getBody() {
        return body;
    }
    public void setBody(String body) {
        this.body = body;
    }

    // Getter và Setter cho username
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getCreated_at() {
        return created_at;
    }
    public void setcreated_at(String created_at) {
        this.created_at = created_at;
    }
}
