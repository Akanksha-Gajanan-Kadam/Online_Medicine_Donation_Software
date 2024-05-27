package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.bean.Pharmacist;

public interface PharmacistRepository extends JpaRepository<Pharmacist, Integer> {

}
