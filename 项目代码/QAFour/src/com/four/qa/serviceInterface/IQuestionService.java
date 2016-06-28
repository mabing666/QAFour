package com.four.qa.serviceInterface;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.Question;
import com.four.qa.model.RQuestion;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
@Path("/Question")
public interface IQuestionService {

	/**
	 * 通过话题tpid获得问题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/17 12:26
	 * @param tpid
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByTPID/{tpid}")
	public List<Question> getListByTPID(@PathParam("tpid") int tpid);

	/**
	 * 创建一个问题
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/24 12:29
	 * @param q
	 * @return
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/createQuestion")
	public Question createQuestion(RQuestion q);

	/**
	 * 通过关键字模糊搜索问题
	 * 
	 * @author mabing
	 * @time 2016-6-26 15:32
	 * @param key
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByQTKey/{key}")
	public List<Question> getListByQTKey(@PathParam("key") String key);

	/**
	 * 通过关键字模糊搜索问题描述
	 * 
	 * @author mabing
	 * @time 2016-6-27 15:31
	 * @param key
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByQCKey/{key}")
	public List<Question> getListByQCKey(@PathParam("key") String key);

	/**
	 * 通过关键字搜索问题，按热门程度排序
	 * 
	 * @author mabing
	 * @time 2016-6-28 1:06
	 * @param key
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByHotQTKey/{key}")
	public List<Question> getListByHotQTKey(@PathParam("key") String key);
	
	/**
	 * 通过问题qid获得问题信息
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/26 23:54
	 * @param tpid
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getQuestionByQID/{qid}")
	public Question getQuestionByQID(@PathParam("qid") int qid);

	/**
	 * 通过话题tpid获得问题（按时间排序）
	 * 
	 * @author Tiaoyu
	 * @time 2016/6/27
	 * @param tpid
	 * @return List
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByTimeTPID/{tpid}")
	public List<Question> getListByTimeTPID(@PathParam("tpid") int tpid);
}
