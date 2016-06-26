package com.four.qa.serviceInterface;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.AAnswer;
import com.four.qa.model.Answer;
import com.four.qa.model.QAnswer;

/**
 * @date 2016-6-25
 * @author mabing
 *
 */
@Path("/Answer")
public interface IAnswerService {

	/**
	 * 通过问题ID获取答案
	 * 
	 * @author mabing
	 * @time 2016-6-25 15:21
	 * @param qid
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByQID/{qid}")
	public List<Answer> getListByQID(@PathParam("qid") int qid);

	/**
	 * 通过父答案ID获得字答案
	 * 
	 * @author mabing
	 * @time 2016-6-25 15:22
	 * @param fid
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByAsID/{fid}")
	public List<Answer> getListByAsID(@PathParam("fid") int fid);

	/**
	 * 新建一个问题的答案
	 * 
	 * @author mabing
	 * @time 2016-6-25 15:24
	 * @param a
	 * @return
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/createQAnswer")
	public Answer createAnswer(QAnswer a);

	/**
	 * 新建一个答案的答案
	 * 
	 * @author mabing
	 * @time 2016-6-25 15:25
	 * @param a
	 * @return
	 * @modify 修改by tiaoyu: 2016/6/26 10:27
	 * url改动
	 */
	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/createAAnswer")
	public AAnswer createAAnswer(AAnswer a);
	
	/**
	 * 通过关键字模糊查找答案
	 * 
	 * @author mabing
	 * @time 2016-6-26 16:49
	 * @param key
	 * @return
	 */
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON + "; charset=UTF-8" })
	@Consumes(MediaType.APPLICATION_JSON + "; charset=UTF-8")
	@Path("/getListByAsKey/{key}")
	public List<Answer> getListByAsKey(@PathParam("key") String key);


}
