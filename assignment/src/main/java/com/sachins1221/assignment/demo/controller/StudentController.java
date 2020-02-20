package com.sachins1221.assignment.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sachins1221.assignment.demo.entity.Student;
import com.sachins1221.assignment.demo.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/list")
	public String listStudent(Model model) {
		
		List<Student> theStudents = studentService.getStudents();
		model.addAttribute("students",theStudents);
		return "student-list";
	}
	
	@GetMapping("/showFormForAdd")
	public String showForm(Model model)
	{
		Student theStudent = new Student();
		model.addAttribute("student",theStudent);
		return "student-form";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student student,BindingResult theBindingResult)
	{
		studentService.saveStudent(student);
		return "redirect:/student/list";
	}
	@GetMapping("/showFormToView")
	public String updateStudent(@RequestParam("studentId") int id,Model model)
	{
		Student student = studentService.getStudent(id);
		
		model.addAttribute("student",student);
		
		return "view-form";
	}
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("studentId") int id)
	{
		studentService.deleteStudent(id);
		return "redirect:/student/list";
	}

}
