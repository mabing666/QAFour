package com.four.qa.serviceInterface;


import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.QU;
import com.four.qa.model.RQU;

/**
 * @date 2016-6-26
 * @author mabing
 *
 */
public interface IQUService {
	
	/**
	 * 保存一个用户对问题的关注
	 * 
	 * @author mabing
	 * @time 2016-6-26 17:36
	 * @param a
	 * @return
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/createQAnswer")
	public QU saveQU(RQU a);

}
