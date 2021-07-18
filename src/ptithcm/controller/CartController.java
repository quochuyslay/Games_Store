package ptithcm.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Cart;
@Transactional
@Controller
public class CartController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("cart")
	public String cart(ModelMap model) {	
			Session session = factory.getCurrentSession();
			String hql = "FROM Cart ORDER BY id_cart DESC";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Cart> list = query.list();
			model.addAttribute("carts", list);
			
		return "cart";
	}	
	
	@RequestMapping("{id_cart}")
	public String cart(ModelMap model, @PathVariable("id_cart") String id_cart) {
		Session session = factory.getCurrentSession();
		Cart cart = (Cart) session.get(Cart.class, id_cart);
		model.addAttribute("cart", cart);
		model.addAttribute("carts", getcarts());
		return "delete_cart";
	}
	
	@SuppressWarnings("unchecked")
	public List<Cart> getcarts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart ORDER BY id_cart DESC";
		Query query = session.createQuery(hql);
		List<Cart> list = query.list();
		return list;
	}
	
	@RequestMapping(value = "cart", method = RequestMethod.POST)
	public String delete_cart(ModelMap model, @ModelAttribute("cart") Cart cart) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(cart);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Xóa thất bại !");
		} finally {
			session.close();
		}
		return "cart";
	}
	
}
