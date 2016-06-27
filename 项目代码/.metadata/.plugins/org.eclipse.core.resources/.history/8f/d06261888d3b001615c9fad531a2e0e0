package com.four.qa.model;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * 问题、话题、用户的重构类
 * 
 * @author Tiaoyu
 * @date 2016/6/26
 */
@XmlRootElement(name = "RQuestion")
public class RQuestion {

	private String qscontent;
	private String qstitle;
	private String TPID;
	private int UID;

	public RQuestion() {
	}

	public RQuestion(String qscontent, String qstitle, String tPID, int uID) {
		super();
		this.qscontent = qscontent;
		this.qstitle = qstitle;
		TPID = tPID;
		UID = uID;
	}

	public String getQscontent() {
		return qscontent;
	}

	public void setQscontent(String qscontent) {
		this.qscontent = qscontent;
	}

	public String getQstitle() {
		return qstitle;
	}

	public void setQstitle(String qstitle) {
		this.qstitle = qstitle;
	}

	public String getTPID() {
		return TPID;
	}

	public void setTPID(String tPID) {
		TPID = tPID;
	}

	public int getUID() {
		return UID;
	}

	public void setUID(int uID) {
		UID = uID;
	}

	@Override
	public String toString() {
		return "RQuestion [qscontent=" + qscontent + ", qstitle=" + qstitle + ", TPID=" + TPID + ", UID=" + UID + "]";
	}

}
