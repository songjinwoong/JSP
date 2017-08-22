package skhu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

public class WriteController implements Controller {
	public String hanleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception{
		req.setCharacterEncoding("utf-8");
		
		String saveFolder = "C:\\Users\\sonf\\Downloads\\mission_web\\src\\skhu\\controller";
		
		return "";
		
		MultipartRequest multi =new MultipartRequest(req, saveFolder,1024*1025*3,new skhuFileNamePoilcy());
		
		String totle = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");
		
		BoardDAO = dao = new BoardDAO();
	}
}
