package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;


@Entity
@Table (name="Bill")
public class Bill {
	@Id
	@GeneratedValue
	public int id_bill;	
	@NotBlank(message =" ⚠ Tên không được phép trống!")
	public String ho_ten;
	@NotBlank(message =" ⚠ Email không được phép trống!")
	public String email;
	public String ghi_chu;
	@NotBlank(message =" ⚠ Thiếu thông tin!")
	public String tinh_huyen;
	@NotBlank(message =" ⚠ Thiếu thông tin!")
	public String xa_phuong;
	@NotBlank(message =" ⚠ Thiếu thông tin!")
	public String dia_chi;
	@NotBlank(message =" ⚠ Thiếu thông tin!")
	public String sdt;
	@NotBlank(message =" ⚠ Trường bắt buộc")
	public String hinh_thuc;
	public String ten;
	public String tinhtrang;
	public String so_luong;
	public String gia;
	public String ngay;
	public String trang_thai;

	
	
	public int getId_bill() {
		return id_bill;
	}
	public void setId_bill(int id_bill) {
		this.id_bill = id_bill;
	}
	public String getHo_ten() {
		return ho_ten;
	}
	public void setHo_ten(String ho_ten) {
		this.ho_ten = ho_ten;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGhi_chu() {
		return ghi_chu;
	}
	public void setGhi_chu(String ghi_chu) {
		this.ghi_chu = ghi_chu;
	}
	public String getTinh_huyen() {
		return tinh_huyen;
	}
	public void setTinh_huyen(String tinh_huyen) {
		this.tinh_huyen = tinh_huyen;
	}
	public String getXa_phuong() {
		return xa_phuong;
	}
	public void setXa_phuong(String xa_phuong) {
		this.xa_phuong = xa_phuong;
	}
	public String getDia_chi() {
		return dia_chi;
	}
	public void setDia_chi(String dia_chi) {
		this.dia_chi = dia_chi;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getHinh_thuc() {
		return hinh_thuc;
	}
	public void setHinh_thuc(String hinh_thuc) {
		this.hinh_thuc = hinh_thuc;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public String getSo_luong() {
		return so_luong;
	}
	public void setSo_luong(String so_luong) {
		this.so_luong = so_luong;
	}
	public String getGia() {
		return gia;
	}
	public void setGia(String gia) {
		this.gia = gia;
	}
	public String getNgay() {
		return ngay;
	}
	public void setNgay(String ngay) {
		this.ngay = ngay;
	}
	public String getTrang_thai() {
		return trang_thai;
	}
	public void setTrang_thai(String trang_thai) {
		this.trang_thai = trang_thai;
	}


}
