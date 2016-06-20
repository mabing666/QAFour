package com.four.qa.model;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Proxy;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
@Entity
@Proxy(lazy = false)
@Table(name = "User")
@XmlRootElement(name = "User")
public class User {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_USER_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_USER_ID_GENERATOR", strategy = "native")
	private String ID;

	@Column(name = "uname", nullable = false)
	private String uname;

	@Column(name = "upwd", nullable = false)
	private String upwd;

	public User() {
	}

	public User(String iD, String uname, String upwd) {
		super();
		ID = iD;
		this.uname = uname;
		this.upwd = upwd;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
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

	@Override
	public String toString() {
		return "User [ID=" + ID + ", uname=" + uname + ", upwd=" + upwd + "]";
	}

}
