package edu.ouc.lenovo.domain;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id; // 用户编号
	private String username; // 用户名
	private String name; // 用户姓名
	private String password; // 用户密码
	private String gender; // 用户性别
	private String email; // 用户邮箱
	private String telephone; // 用户联系电话
	private float money;//余额
	private String provice; //省
	private String city; //市
	private String district; //区
	private String address; // 详细地址
	private String activeCode; // 激活码
	private String role; // 用户角色
	private int state; // 用户状态
	private Date registTime;// 注册时间
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district=district;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city=city;
	}
	
	public String getProvice() {
		return provice;
	}
	public void setProvice(String provice) {
		this.provice=provice;
	}
	
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money=money;
	}
	
	public Date getRegistTime() {
		return registTime;
	}

	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getActiveCode() {
		return activeCode;
	}

	public void setActiveCode(String activeCode) {
		this.activeCode = activeCode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

//	public String getIntroduce() {
//		return introduce;
//	}
//
//	public void setIntroduce(String introduce) {
//		this.introduce = introduce;
//	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", gender=" + gender + ", name=" + name
				+", email=" + email + ", telephone=" + telephone + ", provice=" + provice
				+", city=" + city + ", district=" + district + ", address=" + address +
				", money=" + money +
				", role=" + role + "]";
	}

}