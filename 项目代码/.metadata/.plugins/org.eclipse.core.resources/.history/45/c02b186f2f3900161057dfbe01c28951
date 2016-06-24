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
@Table(name = "utp")
@XmlRootElement(name = "utp")
public class UTP {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_UTP_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_UTP_ID_GENERATOR", strategy = "native")
	private String ID;

	@ManyToOne(targetEntity = UserInfo.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "UID", referencedColumnName = "ID", nullable = false)
	private String UID;

	@ManyToOne(targetEntity = Topic.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "TPID", referencedColumnName = "ID", nullable = false)
	private String TPID;

	public UTP() {
	}

	public UTP(String iD, String uID, String tPID) {
		super();
		ID = iD;
		UID = uID;
		TPID = tPID;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getUID() {
		return UID;
	}

	public void setUID(String uID) {
		UID = uID;
	}

	public String getTPID() {
		return TPID;
	}

	public void setTPID(String tPID) {
		TPID = tPID;
	}

	@Override
	public String toString() {
		return "UTP [ID=" + ID + ", UID=" + UID + ", TPID=" + TPID + "]";
	}

}
