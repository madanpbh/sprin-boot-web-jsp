package com.mkyong.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mkyong.pojo.Product;

@Repository("productDao")
@Transactional
public class ProductDao {
    
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		Session session=sessionFactory.getCurrentSession();
		if(session==null) {
			session=sessionFactory.openSession();
		}
		return session;
	}
	public void saveProduct(Product product) {
		try {
			Session session=getSession();
			session.save(product);
		}
		catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	public List<Product> getProductInformation(){
		List<Product> productList=null;
		try {
			Session session=getSession();
			Criteria crit=session.createCriteria(Product.class);
			productList=crit.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return productList;
		
	}
}
