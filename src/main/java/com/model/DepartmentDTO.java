package com.model;

public class DepartmentDTO {

	//DTO 또는 VO클래스는 데이터를 옮기기 위한 클래스로 테이블별로 1개씩 생성합니다.
	//관련변수를 테이블과 동일한 이름으로 선언하고, getter setter메서드를 반드시 생성합니다.
	
	private int departmentId;
	private String departmentname;
	private int managerId;
	private int locationId;

	
	//생성자는 기본생성자 그리고 멤버변수를 초기화하는 생성자 2개를 만듭니다.(alt + shift + s)
	
	public DepartmentDTO() {
		
	}
	
	
	public DepartmentDTO(int departmentId, String departmentname, int managerId, int locationId) {
		super();
		this.departmentId = departmentId;
		this.departmentname = departmentname;
		this.managerId = managerId;
		this.locationId = locationId;
	}

	
	public int getDepartmentId() {
		return departmentId;
	}



	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}



	public String getDepartmentname() {
		return departmentname;
	}



	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}



	public int getManagerId() {
		return managerId;
	}



	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}



	public int getLocationId() {
		return locationId;
	}



	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}
	
}



