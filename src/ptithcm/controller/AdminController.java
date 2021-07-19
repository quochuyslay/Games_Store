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
@RequestMapping("/admin")
public class AdminController {	
	@Autowired
	SessionFactory factory;
	SessionFactory sessionFactory;
	
	@Autowired
	JavaMailSender mailer;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("login", new Users());
		return "admin/login";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, @Validated @ModelAttribute("login") Users login, BindingResult errors,@RequestParam("username") String username,
			@RequestParam("password") String password) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "");
			return "admin/login";
		} else {
			model.addAttribute("login", new Users());

			Session session = factory.getCurrentSession();

			String sql = "FROM Users WHERE username = '" + login.getUsername()+ "' AND password = '" + login.getPassword() +"'";
			Query query = session.createQuery(sql);

//			query.setParameter("username", login.getUsername());
//			query.setParameter("password", login.getPassword());
			List<Users> list = query.list();
			model.addAttribute("login1", list);

			if (list.isEmpty()) {
				model.addAttribute("message", "Login fail , please try again");
				return "admin/login";

			} else {
				model.addAttribute("message2",""+ username);
				model.addAttribute("message", "Đăng nhập thành công với tên " + username);
				try{
					//Tao mail
					MimeMessage mail = mailer.createMimeMessage();
					//Su dung lop tro giup
					MimeMessageHelper helper = new MimeMessageHelper(mail);
					String from = "quochuyslay@gmail.com";
					helper.setFrom(from,from);
					helper.setTo(login.getEmail());
					helper.setReplyTo(from,from);
					helper.setSubject(subject);
					
					//sinh số ngẫu nhiên Java
					String body = "OTP is " + "";
					helper.setText(body,true);

					//Gui mail
					mailer.send(mail);
					model.addAttribute("message","Gửi mail thành công !");		
				}
				catch(Exception ex){
					model.addAttribute("message","Gửi mail thất bại !");
				}
			}
			return "admin/account";
		}
	}
	
	@RequestMapping(value = "insert_account", method = RequestMethod.GET)
	public String insert_account(ModelMap model) {
		model.addAttribute("user", new Users());
		return "admin/insert_account";
	}
	
	@RequestMapping(value = "insert_account", method = RequestMethod.POST)
	public String insert_account(ModelMap model, @ModelAttribute("user") Users users,BindingResult errors) {
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
			return insert_account(model);
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "admin/insert_account";
	}
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
		return "admin/regis";
	}
	
	@RequestMapping("info_account")
	public String change_pass(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Users";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Users> list = query.list();
		model.addAttribute("users", list);
		return "admin/info_account";
	}
	
	@RequestMapping(value = "delete_account", method = RequestMethod.GET)
	public String delete_account(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Users";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Users> list = query.list();
		model.addAttribute("Users", list);
		
		model.addAttribute("delete_account", new Users());
		return "admin/delete_account";
	}
	
	@RequestMapping(value = "delete_account", method = RequestMethod.POST)
	public String delete_account(ModelMap model, @ModelAttribute("delete_account") Users delete_account,BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if(delete_account.getId().trim().length()==0)
			{
				errors.rejectValue("id", "delete_account", "⚠ Trường bắt buộc");
			}
			if(errors.hasErrors())
			{
				model.addAttribute("message", "*VUI LÒNG ĐIỀN ĐẦY ĐỦ THÔNG TIN*");
			}
			else {							
			session.delete(delete_account);
			t.commit();
			model.addAttribute("message", "Xóa bỏ thành công !");
			return delete_account(model);
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "⚠ ID không chính xác !!!");
		} finally {
			session.close();
		}
		return "admin/delete_account";
	}
}
