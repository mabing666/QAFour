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
 * @date 2016/6/24
 */
@Entity
@Proxy(lazy = false)
@Table(name = "Answer")
@XmlRootElement(name = "Answer")
public class Tag {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_TAG_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_TAG_ID_GENERATOR", strategy = "native")
	private int ID;

	@Column(name = "tgname", nullable = false)
	private String tgname;

	public Tag() {
	}

	public Tag(int iD, String tgname) {
		super();
		ID = iD;
		this.tgname = tgname;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTgname() {
		return tgname;
	}

	public void setTgname(String tgname) {
		this.tgname = tgname;
	}

	@Override
	public String toString() {
		return "Tag [ID=" + ID + ", tgname=" + tgname + "]";
	}

}
