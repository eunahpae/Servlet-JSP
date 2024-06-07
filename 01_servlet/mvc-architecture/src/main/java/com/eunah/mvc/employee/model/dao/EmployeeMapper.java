package com.eunah.mvc.employee.model.dao;

import java.util.List;

import com.eunah.mvc.employee.model.dto.EmployeeDTO;

public interface EmployeeMapper {

    List<EmployeeDTO> selectAllEmp();

    EmployeeDTO selectOneEmpById(String empId);

    Integer selectNewEmpId();

    int insertEmp(EmployeeDTO emp);

    int updateEmp(EmployeeDTO emp);

    int deleteEmp(String empId);

}
