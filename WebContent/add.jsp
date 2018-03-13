<%@page import="com.cafe24.guestbook.vo.GuestBookVo"%>
<%@page import="com.cafe24.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    GuestBookDao dao = new GuestBookDao();
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String content = request.getParameter("content");
    
    dao.insert(new GuestBookVo(null, name, password, content, null));
    response.sendRedirect("/guestbook");
%>