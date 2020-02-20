package com.sachins1221.assignment.demo.dao;

import java.util.List;

import com.sachins1221.assignment.demo.entity.Student;

public interface StudentDAO {

	public List<Student> getStudents();
	
	public String saveStudent(Student student);
	
	public Student getStudent(int id);

	public void deleteStudent(int id);
}
