import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/handler")
public class handler extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().print("Submit successfully..");
		PrintWriter out = resp.getWriter();

		out.print(req.getParameter("test"));
		out.println("1 :-  " + req.getParameter("stp_1_select_option"));
		out.println("2 :-  " + req.getParameter("stp_2_select_option"));
		out.println("3 :-  " + req.getParameter("stp_3_select_option"));
		out.println("4 :-  " + req.getParameter("stp_4_select_option"));
		out.println("5 :-  " + req.getParameter("stp_5_select_option"));

		HttpSession session = req.getSession();
		@SuppressWarnings("unchecked")
		HashMap<Integer, String> data = (HashMap<Integer, String>) session.getAttribute("data");

		out.print(data);

	}

}
