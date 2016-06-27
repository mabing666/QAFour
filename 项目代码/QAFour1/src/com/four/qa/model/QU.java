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
 * @date 2016/6/24
 */
@Entity
@Proxy(lazy = false)
@Table(name = "QU")
@XmlRootElement(name = "QU")
public class QU {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_QU_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_QU_ID_GENERATOR", strategy = "native")
	private int ID;

	@ManyToOne(targetEntity = UserInfo.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "UID", referencedColumnName = "ID")
	private UserInfo UID;

	@ManyToOne(targetEntity = Question.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "QID", referencedColumnName = "ID")
	private Question QID;

	public QU() {
	}

	public QU(int iD, UserInfo uID, Question qID) {
		super();
		ID = iD;
		UID = uID;
		QID = qID;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public UserInfo getUID() {
		return UID;
	}

	public void setUID(UserInfo uID) {
		UID = uID;
	}

	public Question getQID() {
		return QID;
	}

	public void setQID(Question qID) {
		QID = qID;
	}

	@Override
	public String toString() {
		return "QU [ID=" + ID + ", UID=" + UID + ", QID=" + QID + "]";
	}

}
