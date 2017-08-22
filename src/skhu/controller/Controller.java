package skhu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public String hanleRequest (
			HttpServletRequest req, HttpServletResponse res
			);
}







