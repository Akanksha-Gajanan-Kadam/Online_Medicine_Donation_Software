package com.example.demo.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Pharmacist {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String address;
	private long phone;
	private String email;
	private String medname;
	private int quantity;
	private String medimage;
	private String preimage;
	private String aadharimage;

	public String getAadharimage() {
		return aadharimage;
	}

	public void setAadharimage(String aadharimage) {
		this.aadharimage = aadharimage;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMedname() {
		return medname;
	}

	public void setMedname(String medname) {
		this.medname = medname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getMedimage() {
		return medimage;
	}

	public void setMedimage(String medimage) {
		this.medimage = medimage;
	}

	public String getPreimage() {
		return preimage;
	}

	public void setPreimage(String preimage) {
		this.preimage = preimage;
	}

	@Override
	public String toString() {
		return "Pharmacist [id=" + id + ", name=" + name + ", address=" + address + ", phone=" + phone + ", email="
				+ email + ", medname=" + medname + ", quantity=" + quantity + ", medimage=" + medimage + ", preimage="
				+ preimage + ", aadharimage=" + aadharimage + "]";
	}

}
