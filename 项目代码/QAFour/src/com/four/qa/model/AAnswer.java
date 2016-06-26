package com.four.qa.model;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * 回答和回答父ID的重构类
 * 
 * @date 2016/6/25
 * @author Tiaoyu
 */
@XmlRootElement(name = "AAnswer")
public class AAnswer {

	private String ascontent;

	private int UID;

	private int FID;

	public AAnswer() {
	}

	public AAnswer(String ascontent, int uID, int fID) {
		super();
		this.ascontent = ascontent;
		UID = uID;
		FID = fID;
	}

	public String getAscontent() {
		return ascontent;
	}

	public void setAscontent(String ascontent) {
		this.ascontent = ascontent;
	}

	public int getUID() {
		return UID;
	}

	public void setUID(int uID) {
		UID = uID;
	}

	public int getFID() {
		return FID;
	}

	public void setFID(int fID) {
		FID = fID;
	}

	@Override
	public String toString() {
		return "AAnswer [ascontent=" + ascontent + ", UID=" + UID + ", FID=" + FID + "]";
	}

}
