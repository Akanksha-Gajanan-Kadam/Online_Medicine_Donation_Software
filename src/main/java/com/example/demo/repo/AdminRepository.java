package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.bean.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer>{

}
