package com.four.qa.model;

import java.util.Date;

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
@Table(name = "Question")
@XmlRootElement(name = "Question")
public class Question {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_QUESTION_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_QUESTION_ID_GENERATOR", strategy = "native")
	private int ID;

	@Column(name = "qstitle", nullable = false)
	private String qstitle;

	@Column(name = "qscontent", nullable = false)
	private String qscontent;

	@ManyToOne(targetEntity = UserInfo.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "qsuser", referencedColumnName = "ID")
	private UserInfo qsuser;

	@Column(name = "qstime", nullable = false)
	private Date qstime;

	public Question() {
	}

	public Question(int iD, String qstitle, String qscontent, UserInfo qsuser, Date qstime) {
		super();
		ID = iD;
		this.qstitle = qstitle;
		this.qscontent = qscontent;
		this.qsuser = qsuser;
		this.qstime = qstime;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getQstitle() {
		return qstitle;
	}

	public void setQstitle(String qstitle) {
		this.qstitle = qstitle;
	}

	public String getQscontent() {
		return qscontent;
	}

	public void setQscontent(String qscontent) {
		this.qscontent = qscontent;
	}

	public UserInfo getQsuser() {
		return qsuser;
	}

	public void setQsuser(UserInfo qsuser) {
		this.qsuser = qsuser;
	}

	public Date getQstime() {
		return qstime;
	}

	public void setQstime(Date qstime) {
		this.qstime = qstime;
	}

	@Override
	public String toString() {
		return "Question [ID=" + ID + ", qstitle=" + qstitle + ", qscontent=" + qscontent + ", qsuser=" + qsuser
				+ ", qstime=" + qstime + "]";
	}
}
