package org.example.products_discount_calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("product_description");
        double price = Double.parseDouble(req.getParameter("price"));
        double discount = Double.parseDouble(req.getParameter("discount"));

        double discountAmount = price * discount * 0.01;
        double discountPrice = price -  discountAmount;

        PrintWriter out = resp.getWriter();
        out.println("<html><body>");
        out.println("<h2>Discount Calculation Result</h2>");
        out.println("<p><strong>Product Description:</strong> " + description + "</p>");
        out.println("<p><strong> Price:</strong> $" + price + "</p>");
        out.println("<p><strong>Discount Percent:</strong> " + discount + "%</p>");
        out.println("<p><strong>Discount Amount:</strong> $" + discountAmount + "</p>");
        out.println("<p><strong>Discount Price:</strong> $" + discountPrice + "</p>");
        out.println("</body></html>");
    }
}