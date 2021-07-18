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

import ptithcm.entity.Cart;
import ptithcm.entity.Product;

@Transactional
@Controller
public class AController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("a")
	public String a(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product ORDER BY id DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("product", list);
		
		String hql3 = "FROM Cart ORDER BY id_cart DESC";
		Query query3 = session.createQuery(hql3);
		@SuppressWarnings("unchecked")
		List<Cart> list3 = query3.list();
		model.addAttribute("Cart", list3);
		return "a";
	}
}
