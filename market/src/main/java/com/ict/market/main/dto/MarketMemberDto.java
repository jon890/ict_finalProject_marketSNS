package com.ict.market.main.dto;

public class MarketMemberDto {
	
	private String id;
	private String password;
	private String name;
	private int age;
	private String gender;
	private int adminchk;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAdminchk() {
		return adminchk;
	}
	public void setAdminchk(int adminchk) {
		this.adminchk = adminchk;
	}
	
	@Override
	public String toString() {
		return "MarketMember [id=" + id + ", password=" + password + ", name=" + name + ", age=" + age + ", gender=" + gender
				+ ", adminchk=" + adminchk + "]";
	}
		
}