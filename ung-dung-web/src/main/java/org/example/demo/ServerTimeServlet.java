package org.example.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "ServletTimeServlet", urlPatterns = "/index")
public class ServerTimeServlet extends HttpServlet {
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("");
        Date today = new Date();
        out.print("<h1>" + today + "</h1>");
        out.print("");
    }
}