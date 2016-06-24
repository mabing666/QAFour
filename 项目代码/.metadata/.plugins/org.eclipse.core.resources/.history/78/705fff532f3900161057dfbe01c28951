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
@Table(name = "Topic")
@XmlRootElement(name = "Topic")
public class Topic {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_TOPIC_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_TOPIC_ID_GENERATOR", strategy = "native")
	private String ID;

	@Column(name = "tpname", nullable = false)
	private String tpname;

	@Column(name = "tpdetail", nullable = false)
	private String tpdetail;

	public Topic() {
	}

	public Topic(String iD, String tpname, String tpdetail) {
		super();
		ID = iD;
		this.tpname = tpname;
		this.tpdetail = tpdetail;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getTpname() {
		return tpname;
	}

	public void setTpname(String tpname) {
		this.tpname = tpname;
	}

	public String getTpdetail() {
		return tpdetail;
	}

	public void setTpdetail(String tpdetail) {
		this.tpdetail = tpdetail;
	}

	@Override
	public String toString() {
		return "Topic [ID=" + ID + ", tpname=" + tpname + ", tpdetail=" + tpdetail + "]";
	}

}
