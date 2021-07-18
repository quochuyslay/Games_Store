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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Cart;
import ptithcm.entity.Product;

@Transactional
@Controller
public class Detail_ProductController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "product", method = RequestMethod.GET)
	public String product(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart ORDER BY id_cart DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = query.list();
		model.addAttribute("Cart", list);
		model.addAttribute("cart", new Cart());
		
		String hql1 = "FROM Product";
		Query query1 = session.createQuery(hql1);
		@SuppressWarnings("unchecked")
		List<Product> list1 = query1.list();
		model.addAttribute("Product", list1);
		
		return "product";
	}
		
	@RequestMapping(value = "product", method = RequestMethod.POST)
	public String a(ModelMap model, @ModelAttribute("cart") Cart cart) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(cart);
			t.commit();
			model.addAttribute("message", "Đã thêm vào giỏ hàng của bạn!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Có lỗi xin vui lòng thử lại !");
		} finally {
			session.close();
		}
		return "a";
	}
}
