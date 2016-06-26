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
@Table(name = "FSAnswer")
@XmlRootElement(name = "FSAnswer")
public class FSAnswer {

	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(generator = "MODEL_FSANSWER_ID_GENERATOR")
	@GenericGenerator(name = "MODEL_FSANSWER_ID_GENERATOR", strategy = "native")
	private int ID;

	@ManyToOne(targetEntity = Answer.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "FID", referencedColumnName = "ID")
	private Answer FID;

	@ManyToOne(targetEntity = Answer.class, fetch = FetchType.LAZY)
	@Cascade(CascadeType.LOCK)
	@JoinColumn(name = "SID", referencedColumnName = "ID")
	private Answer SID;

	public FSAnswer() {
	}

	public FSAnswer(int iD, Answer fID, Answer sID) {
		super();
		ID = iD;
		FID = fID;
		SID = sID;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public Answer getFID() {
		return FID;
	}

	public void setFID(Answer fID) {
		FID = fID;
	}

	public Answer getSID() {
		return SID;
	}

	public void setSID(Answer sID) {
		SID = sID;
	}

	@Override
	public String toString() {
		return "FSAnswer [ID=" + ID + ", FID=" + FID + ", SID=" + SID + "]";
	}

}
