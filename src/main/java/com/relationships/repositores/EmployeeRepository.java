package com.relationships.repositores;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.relationships.models.Employee;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Long> {
    List<Employee> findAll();

    Optional<Employee> findById(Long id);

    List<Employee> findByPhoneNum(String phoneNum);
}
