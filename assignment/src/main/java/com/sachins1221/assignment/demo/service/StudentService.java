package com.sachins1221.assignment.demo.service;

import java.util.List;

import com.sachins1221.assignment.demo.entity.Student;

public interface StudentService {

	public List<Student> getStudents();
	public void saveStudent(Student cust);
	public Student getStudent(int id);
	public void deleteStudent(int id);
}
