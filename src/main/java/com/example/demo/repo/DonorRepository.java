package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.bean.Donor;

public interface DonorRepository extends JpaRepository<Donor, Integer> {

}
