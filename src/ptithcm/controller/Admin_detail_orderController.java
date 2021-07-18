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

import ptithcm.entity.Bill;

@Transactional
@Controller
@RequestMapping("/admin")
public class Admin_detail_orderController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "detail_order", method = RequestMethod.GET)
	public String detail_order(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Bill ORDER BY id DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Bill> list = query.list();
		model.addAttribute("detail_order", list);
		model.addAttribute("detail_order", new Bill());
		return "admin/detail_order";
	}	
	
	@RequestMapping(value = "detail_order", method = RequestMethod.POST)
	public String detail_order(ModelMap model, @ModelAttribute("detail_order") Bill detail_order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(detail_order);
			t.commit();
			model.addAttribute("message", "⚠ Sửa đổi thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "⚠ Sửa đổi thất bại !");
		} finally {
			session.close();
		}
		return "admin/detail_order";
	}
}