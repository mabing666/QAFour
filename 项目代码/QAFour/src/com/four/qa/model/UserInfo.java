package com.four.qa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Proxy;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
@Entity
@Proxy(lazy = false)
@Table(name = "UserInfo")
@XmlRootElement(name = "UserInfo")
public class UserInfo {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_USER_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_USER_ID_GENERATOR", strategy = "native")
	private int ID;

	@Column(name = "uname", nullable = false)
	private String uname;

	@Column(name = "upwd", nullable = false)
	private String upwd;

	@Column(name = "ucontent", nullable = true)
	private String ucontent;

	public UserInfo() {
	}

	public UserInfo(int iD, String uname, String upwd, String ucontent) {
		super();
		ID = iD;
		this.uname = uname;
		this.upwd = upwd;
		this.ucontent = ucontent;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUcontent() {
		return ucontent;
	}

	public void setUcontent(String ucontent) {
		this.ucontent = ucontent;
	}

	@Override
	public String toString() {
		return "UserInfo [ID=" + ID + ", uname=" + uname + ", upwd=" + upwd + ", ucontent=" + ucontent + "]";
	}

}
