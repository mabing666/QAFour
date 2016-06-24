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
@Table(name = "FSTopic")
@XmlRootElement(name = "FSTopic")
public class FSTopic {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_FSTOPIC_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_FSTOPIC_ID_GENERATOR", strategy = "native")
	private int ID;

	@ManyToOne(targetEntity = Topic.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "SID", referencedColumnName = "ID", nullable = false)
	private Topic SID;

	@ManyToOne(targetEntity = Topic.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "FID", referencedColumnName = "ID", nullable = false)
	private Topic FID;

	public FSTopic() {
	}

	public FSTopic(int iD, Topic sID, Topic fID) {
		super();
		ID = iD;
		SID = sID;
		FID = fID;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public Topic getSID() {
		return SID;
	}

	public void setSID(Topic sID) {
		SID = sID;
	}

	public Topic getFID() {
		return FID;
	}

	public void setFID(Topic fID) {
		FID = fID;
	}

	@Override
	public String toString() {
		return "FSTopic [ID=" + ID + ", SID=" + SID + ", FID=" + FID + "]";
	}

}
