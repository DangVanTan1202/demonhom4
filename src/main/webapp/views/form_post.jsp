<h2>dang bai viet</h2>
<form method="post" action="<%=request.getContextPath()%>/posts">
    tieu de: <input type="text" name="title" /><br/>
    noi dung:<br/>
    <textarea name="body" rows="5" cols="40"></textarea><br/>
    <input type="submit" value="dang bai" />
</form>
<a href="<%=request.getContextPath()%>/posts">Xem bai viet</a>
