package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.bean.Admin;
import com.example.demo.bean.Contact;
import com.example.demo.bean.Donor;
import com.example.demo.bean.Ngo;
import com.example.demo.bean.Pharmacist;
import com.example.demo.bean.RegistrationLoginDetails;
import com.example.demo.repo.AdminRepository;
import com.example.demo.repo.ContactRepository;
import com.example.demo.repo.DonorRepository;
import com.example.demo.repo.MedicineRepository;
import com.example.demo.repo.NgoRepository;
import com.example.demo.repo.PharmacistRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class MedicineController {
	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/donor")
	public String donor() {
		return "donor";
	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}

//	Registration And Login
	@Autowired
	MedicineRepository medicineRepository;

	@PostMapping("/register")
	public String signUp(RegistrationLoginDetails details, HttpSession httpSession) {
		try {
			RegistrationLoginDetails details2 = medicineRepository.save(details);

			if (details2 != null) {
				System.out.println("Insert");
				httpSession.setAttribute("reg-success", "Registration Successful!, Please Login Here!");
				return "redirect:login";
			}
		} catch (DataIntegrityViolationException e) {
			System.out.println("Wrong!");
			httpSession.setAttribute("failed-msg", "Email Id already exists!!");
			return "register";
		}
		return "redirect:login";
	}

	@PostMapping("/login")
	public String login(RegistrationLoginDetails details, HttpSession httpSession) {
		Iterable<RegistrationLoginDetails> itr = medicineRepository.findAll();
		int count = 0;
		for (RegistrationLoginDetails userDonorDetails : itr) {
			if (userDonorDetails.getEmail().equals(details.getEmail())
					&& (userDonorDetails.getPassword().equals(details.getPassword()))) {
				httpSession.setAttribute("details", userDonorDetails);
				return "redirect:medicines";
			} else if (details.getEmail().equals("omdspharma003@gmail.com")
					&& (details.getPassword().equals("Cyber1234#"))) {
				System.out.println(details.getEmail());
				return "redirect:pharmacist";
			} else if (details.getEmail().equals("omdsalldata003@gmail.com")
					&& (details.getPassword().equals("Cyber1234#"))) {
				System.out.println(details.getEmail());
				return "redirect:pharmacist";
			} else if (details.getEmail().equals("omdsadmin003@gmail.com")
					&& (details.getPassword().equals("Cyber1234#"))) {
				System.out.println(details.getEmail());
				return "redirect:admin";
			}

			else {
				count++;
			}
		}
		if (count > 0) {
			System.out.println("Failed");
			httpSession.setAttribute("login-failed", "Invalid Username or Passwoed!");
			return "login";
		}
		return "medicines";
	}

//	Donor Info
	@Autowired
	DonorRepository donorRepo;

	@PostMapping("/donor")
	public String donor(Donor donor, HttpSession httpSession) {
		Donor donor2 = donorRepo.save(donor);
		System.out.println("Form Submitted!");
		httpSession.setAttribute("submit", "Thanks For Your Help!");
		return "redirect:donor";
	}

	@RequestMapping("/pharmacist")
	public List<Donor> show(HttpSession httpSession) {
		List<Donor> list = new ArrayList<Donor>();
		for (Donor donor : donorRepo.findAll()) {
			list.add(donor);
		}
		httpSession.setAttribute("donor", list);
		return list;
	}

//	Contact Info
	@Autowired
	ContactRepository contactRepository;

	@PostMapping("/contact")
	public String contact(Contact contact, HttpSession httpSession) {
		Contact contact2 = contactRepository.save(contact);
		System.out.println("Form Submitted!");
		httpSession.setAttribute("submit1" + "", "Form Submitted! Thank You");
		return "redirect:contact";
	}

//	NGO Info
	@Autowired
	NgoRepository ngoRepository;

	@PostMapping("/ngoreg")
	public String ngoreg(Ngo ngo, HttpSession httpSession) {
		Ngo ngo2 = ngoRepository.save(ngo);
		System.out.println("Form Submitted!");
		httpSession.setAttribute("submit", "Your Form is submitted!");
		return "index";
	}

//	Pharmacist Info
	@Autowired
	PharmacistRepository pharmacistRepository;

	@RequestMapping("/upload")
	public String upload(Pharmacist pharmacist, HttpSession httpSession) {
		Pharmacist pharmacist2 = pharmacistRepository.save(pharmacist);
		httpSession.setAttribute("upload1", "Uploaded!");
		return "redirect:pharmacist";
	}

	@RequestMapping("/delete")
	public String delete(Donor donor, HttpSession httpSession) {
		List<Donor> donors = new ArrayList<Donor>();
		donorRepo.deleteById(donor.getId());
		for (Donor donor2 : donorRepo.findAll()) {
			donors.add(donor2);
		}
		httpSession.setAttribute("donors", donors);
		return "redirect:pharmacist";
	}

	@RequestMapping("/medicines")
	public List<Pharmacist> pharm(HttpSession httpSession) {
		List<Pharmacist> list = new ArrayList<Pharmacist>();
		for (Pharmacist pharmacist : pharmacistRepository.findAll()) {
			list.add(pharmacist);
		}
		httpSession.setAttribute("pharma", list);
		return list;
	}

//	Admin Info
	@Autowired
	AdminRepository adminRepository;

	@RequestMapping("/admin")
	public List<Pharmacist> adshow(HttpSession httpSession) {
		List<Pharmacist> list = new ArrayList<Pharmacist>();
		for (Pharmacist pharmacist : pharmacistRepository.findAll()) {
			list.add(pharmacist);
		}
		httpSession.setAttribute("pharma1", list);
		return list;
	}

	@RequestMapping("/save")
	public String save1(Admin admin, HttpSession httpSession) {
		Admin admin2 = adminRepository.save(admin);
		httpSession.setAttribute("save1", "saved!");
		return "redirect:admin";
	}

	@RequestMapping("/deleted")
	public String delete1(Pharmacist pharmacist, HttpSession httpSession) {
		List<Pharmacist> pharmacists = new ArrayList<Pharmacist>();
		pharmacistRepository.deleteById(pharmacist.getId());
		for (Pharmacist pharmacist2 : pharmacistRepository.findAll()) {
			pharmacists.add(pharmacist2);
		}
		httpSession.setAttribute("pharmasist", pharmacists);
		return "redirect:admin";
	}

}
