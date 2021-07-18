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
public class XboxController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("xbox")
		public String xbox(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product WHERE loai_sp LIKE :loai_sp ORDER BY id DESC ";
		Query query = session.createQuery(hql);
		query.setParameter("loai_sp", "%X%");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("product", list);	
		
		String hql2 ="SELECT product FROM Product product WHERE product.trang_thai = 'True' ORDER BY id DESC";
		Query query2 = session.createQuery(hql2);
		@SuppressWarnings("unchecked")
		List<Product> list2 = query2.list();
		model.addAttribute("selling_product", list2);
		
		String hql3 = "FROM Cart ORDER BY id_cart DESC";
		Query query3 = session.createQuery(hql3);
		@SuppressWarnings("unchecked")
		List<Cart> list3 = query3.list();
		model.addAttribute("Cart", list3);
			return "xbox";
	}		
}
