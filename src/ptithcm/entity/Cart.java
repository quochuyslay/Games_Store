package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table (name="Cart")
public class Cart {
	@Id
	@GeneratedValue
	public String id_cart;	
	public String id;
	public String ten;
	public String anh;
	public String tinhtrang;
	public int so_luong;
	public int gia;
	public int tong_tien;

	public String getId_cart() {
		return id_cart;
	}
	public void setId_cart(String id_cart) {
		this.id_cart = id_cart;
	}
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

	public int getSo_luong() {
		return so_luong;
	}
	public void setSo_luong(int so_luong) {
		this.so_luong = so_luong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getTong_tien() {
		return tong_tien;
	}
	public void setTong_tien(int tong_tien) {
		this.tong_tien = tong_tien;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
}
