package com.sachins1221.assignment.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sachins1221.assignment.demo.dao.StudentDAO;
import com.sachins1221.assignment.demo.entity.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;
	
	@Override
	@Transactional
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		return studentDAO.getStudents();
	}

	@Override
	@Transactional
	public void saveStudent(Student cust) {
		studentDAO.saveStudent(cust);
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional
	public Student getStudent(int id) {
		// TODO Auto-generated method stub
		
		return studentDAO.getStudent(id);
	}

	@Override
	@Transactional
	public void deleteStudent(int id) {
		// TODO Auto-generated method stub
		studentDAO.deleteStudent(id);
	}

}
