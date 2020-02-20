package com.sachins1221.assignment.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sachins1221.assignment.demo.entity.Student;

@Repository
public class StudentDAOImpl implements StudentDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Student> query = session.createQuery("from Student order by firstName",Student.class);
		
		List<Student> students = query.getResultList();
		
		return students;
	}

	@Override
	public String saveStudent(Student student) {
		// TODO Auto-generated method stub
		System.out.println("id:"+student.getId());
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Student where firstName=:theName and subject=:theSubject");
		query.setParameter("theName",student.getFirstName());
		query.setParameter("theSubject",student.getSubject());
		List<Student> students = query.getResultList();
		System.out.println("Size="+students.size());
		if(students.isEmpty())
		{
			session.saveOrUpdate(student);
		}else
		{
			this.deleteStudent(students.get(0).getId());
			session.saveOrUpdate(student);
		}
		
		return "student-list";
	}

	@Override
	public Student getStudent(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Student student = session.get(Student.class,id);
		return student;
	}

	@Override
	public void deleteStudent(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from Student where id=:theId");
		query.setParameter("theId",id);
		query.executeUpdate();
		
	}

	

}
