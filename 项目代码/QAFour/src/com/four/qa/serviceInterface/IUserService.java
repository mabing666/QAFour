package com.four.qa.serviceInterface;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.UserInfo;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
@Path("/UserInfo")
public interface IUserService {

	/**
	 * 用户登陆服务
	 * 
	 * @param uname
	 * @param upwd
	 * @return UserInfo
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/doLogin")
	public UserInfo doLogin(UserInfo user);
	
	
	/**
	 * 用户注册服务
	 * 
	 * @time 2016/6/23 18:03
	 * @param user
	 * @return UserInfo
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/doRegister")
	public UserInfo doRegister(UserInfo user);
}
