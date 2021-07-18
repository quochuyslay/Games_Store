package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.Users;

@Controller
@Transactional
@RequestMapping("regis")
public class RegisController {
	@Autowired
	SessionFactory factory;
	SessionFactory sessionFactory;

//	thêm tài khoản
	@RequestMapping(value = "regis", method = RequestMethod.GET)
	public String regis(ModelMap model) {
		model.addAttribute("user", new Users());
		return "regis";
	}
	
	@RequestMapping(value = "regis", method = RequestMethod.POST)
	public String regis(ModelMap model, @ModelAttribute("user") Users users,BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();		
		try {
			if(users.getUsername().trim().length()==0)
			{
				errors.rejectValue("username", "users", "⚠ Thiếu thông tin Tên đăng nhập ! ");
			}
			if(users.getFullname().trim().length()==0)
			{
				errors.rejectValue("fullname", "users", "⚠ Trường bắt buộc ");
			}
			if(users.getEmail().trim().length()==0)
			{
				errors.rejectValue("email", "users", "⚠ Trường bắt buộc ");
			}
			if(users.getSdt().trim().length()==0)
			{
				errors.rejectValue("sdt", "users", "⚠ Trường bắt buộc ");
			}
			if(users.getPassword().trim().length()==0)
			{
				errors.rejectValue("password", "users", "⚠ Trường bắt buộc ");
			}
			if(errors.hasErrors())
			{
				model.addAttribute("message", "*VUI LÒNG ĐIỀN ĐẦY ĐỦ THÔNG TIN*");
			}
			else {
			session.save(users);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
			return regis(model);
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "regis";
	}
	


}
