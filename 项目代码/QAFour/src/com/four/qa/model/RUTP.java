package com.four.qa.model;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * 用户对主题的关注的重构
 * 
 * @date 2016-6-27
 * @author mabing
 *
 */
@XmlRootElement(name = "RUTP")
public class RUTP {
	private int uid;
	private int tpid;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getTpid() {
		return tpid;
	}
	public void setTpid(int tpid) {
		this.tpid = tpid;
	}
	public RUTP(int uid, int tpid) {
		super();
		this.uid = uid;
		this.tpid = tpid;
	}
	public RUTP (){
		
	}
	@Override
	public String toString() {
		return "RUTP [uid=" + uid + ", tpid=" + tpid + "]";
	}
	

}
