<%@page import="com.cafe24.guestbook.vo.GuestBookVo"%>
<%@page import="com.cafe24.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    GuestBookDao dao = new GuestBookDao();
    int no = Integer.parseInt(request.getParameter("no"));
    String password = request.getParameter("password");
    
    dao.delete(new GuestBookVo((long)no, null, password, null, null));
    response.sendRedirect("/guestbook");
%>