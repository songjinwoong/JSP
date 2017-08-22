package skhu.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;

public class FrontController extends HttpServlet {
	private HandlerMapping mappings = null;

	Controller controller = mappings.getController(uri);

	try
	{
		String callPage = controller.hanleRequest(req, res);
		if (uri.equals("/logout.do")) {
			res.sendRedirect(context + callPage);
		} else {
			RequestDispatcher dispatcher = req.getRequestdispatcher(callPage);
			dispatcher.forward(req, res);
		}
	}catch(
	Exception e)
	{
		throw new ServleException(e);
	}

}
