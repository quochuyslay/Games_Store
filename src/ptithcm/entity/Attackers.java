package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="Attackers")

public class Attackers {
	@Id
	@GeneratedValue
	@NotBlank(message ="⚠ Tên đăng nhập không được phép trống!!")
	private String username;
	@NotBlank(message ="⚠ Mật khẩu không được phép trống!!")
	private String password;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
