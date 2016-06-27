package com.four.qa.model;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * 主题和问题的重构
 * 
 * @date 2016-6-27 10:43
 * @author mabing
 *
 */
@XmlRootElement(name = "RQTP")
public class RQTP {
	private int qid;
	private int tpid;
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public int getTpid() {
		return tpid;
	}
	public void setTpid(int tpid) {
		this.tpid = tpid;
	}
	@Override
	public String toString() {
		return "RQTP [qid=" + qid + ", tpid=" + tpid + "]";
	}
	public RQTP(int qid, int tpid) {
		super();
		this.qid = qid;
		this.tpid = tpid;
	}
	public RQTP()
	{
		
	}

}
