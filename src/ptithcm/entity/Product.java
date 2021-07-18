package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table (name="Product")
public class Product {
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getGia() {
		return gia;
	}
	public void setGia(String gia) {
		this.gia = gia;
	}
	public String getAnh_post() {
		return anh_post;
	}
	public void setAnh_post(String anh_post) {
		this.anh_post = anh_post;
	}
	public String getAnh_1() {
		return anh_1;
	}
	public void setAnh_1(String anh_1) {
		this.anh_1 = anh_1;
	}
	public String getAnh_2() {
		return anh_2;
	}
	public void setAnh_2(String anh_2) {
		this.anh_2 = anh_2;
	}
	public String getAnh_3() {
		return anh_3;
	}
	public void setAnh_3(String anh_3) {
		this.anh_3 = anh_3;
	}
	public String getAnh_4() {
		return anh_4;
	}
	public void setAnh_4(String anh_4) {
		this.anh_4 = anh_4;
	}
	public String getLoai_sp() {
		return loai_sp;
	}
	public void setLoai_sp(String loai_sp) {
		this.loai_sp = loai_sp;
	}
	@Id
	@GeneratedValue
	public String id;	
	public String ten;
	public String gia;
	public String anh_post;
	public String anh_1;
	public String anh_2;
	public String anh_3;
	public String anh_4;
	public String loai_sp;
	public Boolean trang_thai;
	public Boolean getTrang_thai() {
		return trang_thai;
	}
	public void setTrang_thai(Boolean trang_thai) {
		this.trang_thai = trang_thai;
	}
	
}
