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
 * 
 * @author Tiaoyu
 * @date 2016/6/20
 */
@Entity
@Proxy(lazy = false)
@Table(name = "tq")
@XmlRootElement(name = "tq")
public class QTP {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_TQ_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_TQ_ID_GENERATOR", strategy = "native")
	private String ID;

	@ManyToOne(targetEntity = Topic.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "TPID", referencedColumnName = "ID", nullable = false)
	private String TPID;

	@ManyToOne(targetEntity = Question.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "QID", referencedColumnName = "ID", nullable = false)
	private String QID;

	public QTP() {
	}

	public QTP(String iD, String tPID, String qID) {
		super();
		ID = iD;
		TPID = tPID;
		QID = qID;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getTPID() {
		return TPID;
	}

	public void setTPID(String tPID) {
		TPID = tPID;
	}

	public String getQID() {
		return QID;
	}

	public void setQID(String qID) {
		QID = qID;
	}

}