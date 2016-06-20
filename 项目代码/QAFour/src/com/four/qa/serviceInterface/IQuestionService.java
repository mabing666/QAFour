package com.four.qa.serviceInterface;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.four.qa.model.Question;

/**
 * @author Tiaoyu
 * @date 2016/6/17
 */
@Path("/Question")
public interface IQuestionService {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("/getListByTPID/{tpid}")
	public List<Question> getListByTPID(@PathParam("tpid") String tpid);

}
