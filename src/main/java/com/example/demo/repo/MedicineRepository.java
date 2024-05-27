package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.bean.RegistrationLoginDetails;

public interface MedicineRepository extends JpaRepository<RegistrationLoginDetails, Integer> {

}
