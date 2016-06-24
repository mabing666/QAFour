package com.four.qa.serviceInterface;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.Topic;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
@Path("/Topic")
public interface ITopicService {

	/**
	 * 获得所有话题
	 * 
	 * @return List
	 * @time 2016/6/18 9:55
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getAllTopic")
	public List<Topic> getAllTopic();

	/**
	 * 获得所有根话题
	 * 
	 * @return List
	 * @time 2016/6/18 16:37
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getAllRootTopic")
	public List<Topic> getAllRootTopic();

	/**
	 * 获得某话题下的所有根话题
	 * 
	 * @time 2016/6/19 21:54
	 * @return List
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getAllRootTopic/{tpid}")
	public List<Topic> getAllRootTopic(@PathParam("tpid") int tpid);

	/**
	 * 获得话题信息
	 * 
	 * @time 2016/6/20 15:30
	 * @param tpid
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getTopic/{tpid}")
	public Topic getTopic(@PathParam("tpid") int tpid);

	/**
	 * 获得用户关注的话题
	 * 
	 * @time 2016/6/20 20:21
	 * @param uid
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getUserFavourite/{uid}")
	public List<Topic> getUserFavourite(@PathParam("uid") int uid);

	/**
	 * 获得父话题列表
	 * 
	 * @time 2016/6/22 15:11
	 * @param sid
	 * @return List
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getFatherTopic/{sid}")
	public Topic getFatherTopic(@PathParam("sid") int sid);

	/**
	 * 获得子话题
	 * 
	 * @time 2016/6/22 15:12
	 * @param fid
	 * @return Topic
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getSonTopic/{fid}")
	public List<Topic> getSonTopic(@PathParam("fid") int fid);
}
