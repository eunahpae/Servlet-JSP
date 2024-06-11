package com.eunah.practice0605;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/showErrorPage")
public class ShowErrorPage extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String errorMessage = (String) request.getAttribute("jakarta.servlet.error.message");
        Integer errorStatusCode = (Integer) request.getAttribute("jakarta.servlet.error.status_code");

        request.setAttribute("errorMessage", errorMessage);
        request.setAttribute("errorStatusCode", errorStatusCode);

        request.getRequestDispatcher("/views/error.jsp").forward(request, response);
    }
}
