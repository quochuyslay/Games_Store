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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Bill;

@Transactional
@Controller
@RequestMapping("/admin")
public class Admin_sellingController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("selling")
	public String selling(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Bill ORDER BY id DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Bill> list = query.list();
		model.addAttribute("selling", list);	
		return "admin/selling";
	}
}