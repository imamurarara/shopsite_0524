package shopservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();

		String item_id = request.getParameter("item_id");
		String item_name = request.getParameter("item_name");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String userid = (String)session.getAttribute("userid");

		System.out.println("quantit=" +quantity + "user="+ userid);

		String[] buyitem = {item_id, item_name, price, quantity, userid};
		session.setAttribute("buyitem", buyitem);


		int q = Integer.parseInt(quantity);

		if( q == 0 ){
			request.setAttribute("message", "数量を選んでください");
			ServletContext context = getServletContext();
			RequestDispatcher rd = context.getRequestDispatcher("/ItemServlet");
			rd.forward(request, response);

			}else{
				System.out.println("buy=" +buyitem);
				ServletContext context = getServletContext();
				RequestDispatcher rd = context.getRequestDispatcher("/confirm.jsp");
				rd.forward(request, response);
			}




	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
