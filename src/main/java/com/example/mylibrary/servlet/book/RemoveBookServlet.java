package com.example.mylibrary.servlet.book;

import com.example.mylibrary.manager.BookManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/removeBook")
public class RemoveBookServlet extends HttpServlet {
    private BookManager bookManager = new BookManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        bookManager.removeById(id);
        resp.sendRedirect("/book");
    }
}
