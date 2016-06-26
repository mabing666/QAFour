package com.four.qa.model;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * 回答和回答问题ID的重构类
 * 
 * @date 2016/6/26
 * @author Tiaoyu
 */
@XmlRootElement(name = "QAnswer")
public class QAnswer {

	private String ascontent;
	private int QID;
	private int UID;

	public QAnswer() {
	}

	public QAnswer(String ascontent, int qID, int uID) {
		super();
		this.ascontent = ascontent;
		QID = qID;
		UID = uID;
	}

	public String getAscontent() {
		return ascontent;
	}

	public void setAscontent(String ascontent) {
		this.ascontent = ascontent;
	}

	public int getQID() {
		return QID;
	}

	public void setQID(int qID) {
		QID = qID;
	}

	public int getUID() {
		return UID;
	}

	public void setUID(int uID) {
		UID = uID;
	}

	@Override
	public String toString() {
		return "QAnswer [ascontent=" + ascontent + ", QID=" + QID + ", UID=" + UID + "]";
	}

}
