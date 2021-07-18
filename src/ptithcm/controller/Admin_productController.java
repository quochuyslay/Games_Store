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

import ptithcm.entity.Product;

@Transactional
@Controller
@RequestMapping("/admin")
public class Admin_productController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("list_product")
	public String list_page(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product ORDER BY id DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("list_product", list);	
		return "admin/list_product";
	}
	
	@RequestMapping(value = "add_product", method = RequestMethod.GET)
	public String add_product(ModelMap model) {
		model.addAttribute("add_product", new Product());
		return "admin/add_product";
	}
	
	@RequestMapping(value = "add_product", method = RequestMethod.POST)
	public String add_product(ModelMap model, @ModelAttribute("add_product") Product add_product,BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if(add_product.getLoai_sp().trim().length()==0)
			{
				errors.rejectValue("loai_sp", "add_product", "⚠ Trường Loại sản phẩm bắt buộc");
			}
			if(add_product.getAnh_post().trim().length()==0)
			{
				errors.rejectValue("anh_post", "add_product", "⚠ Trường Hình ảnh bắt buộc");
			}
			if(add_product.getTen().trim().length()==0)
			{
				errors.rejectValue("ten", "add_product", "⚠ Trường Tên sản phẩm bắt buộc");
			}
			if(add_product.getGia().trim().length()==0)
			{
				errors.rejectValue("gia", "add_product", "⚠ Trường Giá sản phẩm bắt buộc");
			}
			if(add_product.getAnh_1().trim().length()==0)
			{
				errors.rejectValue("anh_1", "add_product", "⚠ Trường Hình 1 bắt buộc");
			}
			if(add_product.getAnh_2().trim().length()==0)
			{
				errors.rejectValue("anh_2", "add_product", "⚠ Trường Hình 2 bắt buộc");
			}
			if(add_product.getAnh_3().trim().length()==0)
			{
				errors.rejectValue("anh_3", "add_product", "⚠ Trường Hình 3 bắt buộc");
			}
			if(add_product.getAnh_4().trim().length()==0)
			{
				errors.rejectValue("anh_4", "add_product", "⚠ Trường Hình 4 bắt buộc");
			}		
			if(errors.hasErrors())
			{
				model.addAttribute("message", "*VUI LÒNG ĐIỀN ĐẦY ĐỦ THÔNG TIN*");
			}
			else {							
			session.save(add_product);
			t.commit();
			model.addAttribute("message", "⚠Thêm mới thành công !");
			return add_product(model);
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "⚠ Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "admin/add_product";
	}
	
	@RequestMapping("{id}")
	public String update_product(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		Product product = (Product) session.get(Product.class, id);

		model.addAttribute("product", product);
		model.addAttribute("products", getproducts());
		return "admin/update_product";
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getproducts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product ORDER BY id DESC";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		return list;
	}
	
	@RequestMapping(value = "update_product", method = RequestMethod.POST)
	public String update_product(ModelMap model, @ModelAttribute("product") Product update_product) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(update_product);
			t.commit();
			model.addAttribute("message", "⚠ Sửa đổi thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "⚠ Sửa đổi thất bại !");
		} finally {
			session.close();
		}
		return "admin/update_product";
	}
	
	@RequestMapping(value = "delete_product", method = RequestMethod.GET)
	public String delete_product(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product ORDER BY id DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("list_product", list);	
		model.addAttribute("delete_product", new Product());
		return "admin/delete_product";
	}
	
	@RequestMapping(value = "delete_product", method = RequestMethod.POST)
	public String delete_product(ModelMap model, @ModelAttribute("delete_product") Product delete_product,BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if(delete_product.getId().trim().length()==0)
			{
				errors.rejectValue("id", "delete_account", "⚠ Trường bắt buộc");
			}
			if(errors.hasErrors())
			{
				model.addAttribute("message", "*VUI LÒNG ĐIỀN ĐẦY ĐỦ THÔNG TIN*");
			}
			else {							
			session.delete(delete_product);
			t.commit();
			model.addAttribute("message", "⚠ Xóa bỏ thành công !");
			return delete_product(model);
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "⚠ ID sản phẩm không tồn tại! Hoặc đang có trong giỏ hàng!");
		} finally {
			session.close();
		}
		return "admin/delete_product";
	}
}
