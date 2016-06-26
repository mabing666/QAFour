package com.four.qa.model;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * 用户和问题的重构
 * 
 * @date 2016-6-26
 * @author mabing
 *
 */
@XmlRootElement(name = "RQU")
public class RQU {
	private int UID;
	private int QID;
	public int getUID() {
		return UID;
	}
	public void setUID(int uID) {
		UID = uID;
	}
	public int getQID() {
		return QID;
	}
	public void setQID(int qID) {
		QID = qID;
	}
	public RQU(int uID, int qID) {
		super();
		UID = uID;
		QID = qID;
	}
	public RQU(){
		
	}
	@Override
	public String toString() {
		return "RQU [UID=" + UID + ", QID=" + QID + "]";
	}
	

}
