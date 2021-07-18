package ptithcm.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.Product;

@Transactional
@Controller
public class Delete_Cart {
	@Autowired
	SessionFactory factory;
	@RequestMapping("delele_cart")
	public String delele_cart(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product ORDER BY id DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("product", list);
		
		return "delele_cart";
	}
}
