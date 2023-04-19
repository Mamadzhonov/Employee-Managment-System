package com.relationships.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.relationships.models.Employee;
import com.relationships.repositores.EmployeeRepository;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepo;

    public Employee create(Employee employee) {
        return employeeRepo.save(employee);
    }

    public List<Employee> allEmployees() {
        return employeeRepo.findAll();
    }

    public Employee findById(Long id) {
        Optional<Employee> optBook = employeeRepo.findById(id);
        if (optBook.isPresent()) {
            return optBook.get();
        }
        return null;
    }

    public Boolean findAllByTitle(String title) {
        List<Employee> optShow = employeeRepo.findByPhoneNum(title);
        if (optShow.size() > 0) {
            return true;
        }
        return false;
    }

    public void deleteById(Long id) {
        employeeRepo.deleteById(id);
    }

    public Employee update(Employee tv) {
        return employeeRepo.save(tv);
    }
}
