package com.eunah.mvc.employee.controller;

import java.io.IOException;
import java.util.List;

import com.eunah.mvc.employee.model.dto.EmployeeDTO;
import com.eunah.mvc.employee.model.service.EmployeeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/employee/list")
public class SelectAllEmpServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EmployeeService employeeService = new EmployeeService();
        List<EmployeeDTO> empList = employeeService.selectAllEmp();

        String path = "";
        if(empList != null && !empList.isEmpty()) {
            request.setAttribute("empList", empList);
            path = "/WEB-INF/views/employee/employeeList.jsp";

        } else {
            request.setAttribute("message", "전체 직원 목록 조회에 실패하였습니다.");
            path = "/WEB-INF/views/common/errorPage.jsp";
        }

        request.getRequestDispatcher(path).forward(request, response);
    }

}