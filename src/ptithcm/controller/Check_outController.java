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
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Bill;
import ptithcm.entity.Cart;

@Transactional
@Controller
public class Check_outController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "check_out", method = RequestMethod.GET)
	public String check_out(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart ORDER BY id_cart DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = query.list();
		model.addAttribute("Cart", list);

		String hql1 = "FROM Bill";
		Query query1 = session.createQuery(hql1);
		@SuppressWarnings("unchecked")
		List<Bill> list1 = query1.list();
		model.addAttribute("bill1", list1);
		model.addAttribute("bill", new Bill());

		return "check_out";
	}

	// @RequestMapping(value = "check_out", method = RequestMethod.POST)
	// public String check_out(ModelMap model, @ModelAttribute("bill") Bill
	// bill,BindingResult errors) {
	// Session session = factory.openSession();
	// Transaction t = session.beginTransaction();
	// try {
	// if(bill.getHo_ten().trim().length()==0)
	// {
	// errors.rejectValue("ho_ten", "bill", "⚠ Thiếu thông tin Họ tên ! ");
	// }
	// if(errors.hasErrors())
	// {
	// model.addAttribute("message", "VUI LÒNG ĐIỀN ĐẦY ĐỦ THÔNG TIN");
	// }
	// else {
	// session.save(bill);
	// t.commit();
	// model.addAttribute("message", "Đặt hàng thành công !");
	// return check_out(model);
	// }
	// } catch (Exception e) {
	// t.rollback();
	// model.addAttribute("message", "Đặt hàng thất bại !");
	// } finally {
	// session.close();
	// }
	// return "a";
	// }
	@RequestMapping(value = "check_out", method = RequestMethod.POST)
	public String check_out(ModelMap model, @Validated @ModelAttribute("bill") Bill bill, BindingResult errors) {
		System.out.println(bill.getDia_chi());
		System.out.println(bill.getEmail());
		System.out.println(bill.getGhi_chu());
		System.out.println(bill.getGia());
		System.out.println(bill.getHinh_thuc());
		System.out.println(bill.getHo_ten());
		System.out.println(bill.getId_bill());
		System.out.println(bill.getNgay());
		System.out.println(bill.getSdt());
		System.out.println(bill.getSo_luong());
		System.out.println(bill.getTen());
		System.out.println(bill.getTinh_huyen());
		System.out.println(bill.getTinhtrang());
		System.out.println(bill.getTrang_thai());
		System.out.println(bill.getXa_phuong());
		if (errors.hasErrors()) {
			model.addAttribute("message", "VUI LÒNG ĐIỀN ĐẦY ĐỦ THÔNG TIN");
			return "check_out";
		} else {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(bill);
				t.commit();
				model.addAttribute("message", "Đặt hàng thành công !");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Đặt hàng thất bại !");
				System.out.println(e.getMessage());
			} finally {
				session.close();
			}
			return "b";
		}
	}
}
