package com.eunah.mvc.employee.controller;

import java.io.IOException;

import com.eunah.mvc.employee.model.service.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/employee/delete")
public class DeleteEmpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String empId = request.getParameter("empId");

        EmployeeService employeeService = new EmployeeService();
        int result = employeeService.deleteEmp(empId);

        if(result > 0) {
            response.sendRedirect(request.getContextPath() + "/employee/list");

        } else {
            request.setAttribute("message", "직원 정보 삭제에 실패하였습니다.");
            request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
        }
    }

}