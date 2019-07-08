package com.mkyong.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mkyong.pojo.Employee;

@Repository("employeeDao")
@Transactional
public class EmployeeDao {
    
	@Autowired
	private SessionFactory factory;

	private Session getSession() {
		
		Session session=factory.getCurrentSession();
		if(session==null) {
			session=factory.openSession();
		}
		return session;
	    }
	
	
    public void saveEmployee(Employee employee) {
	try {
		Session session=getSession();
		session.save(employee);
		}
	catch(Exception e) {
		e.printStackTrace();
	}
    }
     public List<Employee> getEmployeeList(){

	    List<Employee> employeelist=null;
       try
     {
	Session session=getSession();
	Criteria crit=session.createCriteria(Employee.class);
	employeelist=crit.list();
    }
    catch(Exception e) {
    	e.printStackTrace();
    }
       return employeelist;
}

}
