<%@ page import="com.mang.model.Post" %>
<%@ page import="java.util.*" %>
<h2>danh sach bai viet</h2>

<%
    List<Post> posts = (List<Post>) request.getAttribute("posts");
    for (Post p : posts) {
%>
    <div style="border:1px solid gray; margin:10px; padding:10px;">
        <b><%=p.getUsername()%></b><br/>
        <i><%=p.getTitle()%></i><br/>
        <p><%=p.getBody()%></p>
        <p><%=p.getStatus()%></p>
        <p><%=p.getCreated_at()%></p>
        
    </div>
<% } %>
<a href="<%=request.getContextPath()%>/views/form_post.jsp">dang bai viet </a>
