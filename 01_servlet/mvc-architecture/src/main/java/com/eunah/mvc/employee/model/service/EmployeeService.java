package com.eunah.mvc.employee.model.service;

import static com.eunah.mvc.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eunah.mvc.employee.model.dao.EmployeeMapper;
import com.eunah.mvc.employee.model.dto.EmployeeDTO;

public class EmployeeService {

    private EmployeeMapper employeeMapper;

    public List<EmployeeDTO> selectAllEmp() {
        SqlSession sqlSession = getSqlSession();
        employeeMapper = sqlSession.getMapper(EmployeeMapper.class);

        List<EmployeeDTO> empList = employeeMapper.selectAllEmp();

        sqlSession.close();

        return empList;
    }

    public EmployeeDTO selectOneEmpById(String empId) {
        SqlSession sqlSession = getSqlSession();
        employeeMapper = sqlSession.getMapper(EmployeeMapper.class);

        EmployeeDTO selectedEmp = employeeMapper.selectOneEmpById(empId);

        sqlSession.close();

        return selectedEmp;
    }

    public int insertEmp(EmployeeDTO emp) {
        SqlSession sqlSession = getSqlSession();
        employeeMapper = sqlSession.getMapper(EmployeeMapper.class);

        String newEmpId = employeeMapper.selectNewEmpId().toString();
        emp.setEmpId(newEmpId);

        int result = employeeMapper.insertEmp(emp);

        if(result > 0) {
            sqlSession.commit();
        } else {
            sqlSession.rollback();
        }

        sqlSession.close();

        return result;
    }

    public int updateEmp(EmployeeDTO emp) {
        SqlSession session = getSqlSession();
        employeeMapper = session.getMapper(EmployeeMapper.class);

        int result = employeeMapper.updateEmp(emp);

        if(result > 0) {
            session.commit();
        } else {
            session.rollback();
        }

        session.close();

        return result;
    }

    public int deleteEmp(String empId) {
        SqlSession session = getSqlSession();
        employeeMapper = session.getMapper(EmployeeMapper.class);

        int result = employeeMapper.deleteEmp(empId);

        if(result > 0) {
            session.commit();
        } else {
            session.rollback();
        }

        session.close();

        return result;
    }

}
