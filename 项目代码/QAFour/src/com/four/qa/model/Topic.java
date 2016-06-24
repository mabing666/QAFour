package com.four.qa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
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
	private int ID;

	@Column(name = "tpname", nullable = false)
	private String tpname;

	@Column(name = "tpdetail", nullable = false)
	private String tpdetail;

	@ManyToOne(targetEntity = Tag.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "tptag", referencedColumnName = "ID")
	private Tag tptag;

	public Topic() {
	}

	public Topic(int iD, String tpname, String tpdetail, Tag tptag) {
		super();
		ID = iD;
		this.tpname = tpname;
		this.tpdetail = tpdetail;
		this.tptag = tptag;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
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

	public Tag getTptag() {
		return tptag;
	}

	public void setTptag(Tag tptag) {
		this.tptag = tptag;
	}

	@Override
	public String toString() {
		return "Topic [ID=" + ID + ", tpname=" + tpname + ", tpdetail=" + tpdetail + ", tptag=" + tptag + "]";
	}

}
