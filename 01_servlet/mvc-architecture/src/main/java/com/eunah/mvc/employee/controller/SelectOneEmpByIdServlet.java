package com.eunah.mvc.employee.controller;

import java.io.IOException;

import com.eunah.mvc.employee.model.dto.EmployeeDTO;
import com.eunah.mvc.employee.model.service.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/employee/select")
public class SelectOneEmpByIdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String empId = request.getParameter("empId");
        System.out.println("empId : " + empId);

        EmployeeService employeeService = new EmployeeService();
        EmployeeDTO selectedEmp = employeeService.selectOneEmpById(empId);

        String path = "";
        if(selectedEmp != null) {
            path = "/WEB-INF/views/employee/empInfo.jsp";
            request.setAttribute("selectedEmp", selectedEmp);
            
        } else {
            path = "/WEB-INF/views/common/errorPage.jsp";
            request.setAttribute("message", "해당 사번을 가진 직원이 존재하지 않습니다.");
        }

        request.getRequestDispatcher(path).forward(request, response);
    }

}