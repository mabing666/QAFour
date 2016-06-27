package com.four.qa.serviceInterface;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.QTP;
import com.four.qa.model.RQTP;


/**
 * 
 * @date 2016-6-27
 * @author mabing
 *
 */
public interface IQTPService {
	
	/**
	 * 保存一个问题与主题的关联
	 * 
	 * @author mabing
	 * @time 2016-6-27 11:27
	 * @param a
	 * @return
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/saveQTP")
	public QTP saveQTP(RQTP a);

}
