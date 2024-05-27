package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.bean.Ngo;

public interface NgoRepository extends JpaRepository<Ngo, Integer> {

}
