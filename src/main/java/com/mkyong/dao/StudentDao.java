package com.mkyong.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mkyong.pojo.Student;

@Repository("studentDao")
@Transactional
public class StudentDao {
	
	@Autowired
	private SessionFactory factory;
	
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
	
	
	public void saveStudent(Student student) {
		try{
			Session session = getSession();
			session.save(student);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Student> getStudentList(){
		
		List<Student> stList = null;
		try{
			Session session = getSession();
			Criteria crt = session.createCriteria(Student.class);
			stList = crt.list();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return stList;
	}
	
	public void deleteStudent(Long pk){
		try{
			Session session = getSession();
			Student student = session.get(Student.class, pk);
			if(student != null)
				session.delete(student);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
