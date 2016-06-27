package com.four.qa.serviceInterface;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.RUTP;
import com.four.qa.model.UTP;


/**
 * @date 2016-6-27
 * @author mabing
 *
 */
public interface IUTPService {
	
	/**
	 * 保存一个用户对主题的关注
	 * 
	 * @author mabing
	 * @time 2016-6-27 11:43
	 * @param a
	 * @return
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/saveUTP")
	public UTP saveUTP(RUTP a);

}
