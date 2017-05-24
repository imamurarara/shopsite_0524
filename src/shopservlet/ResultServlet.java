package shopservlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BeanDao.ItemBean;
import BeanDao.ShopDao;


/**
 * Servlet implementation class ResultServlet
 */
@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");

		ShopDao buydao = null;

		String buyact = request.getParameter("buyaction");
		System.out.println("yyuy="+ buyact);
		if(buyact != null && buyact.equals("buy_act")){
			try {
				System.out.println("hist=" );
				buydao = new ShopDao();
				System.out.println("hist=" );
				String[] buyitem = (String[])session.getAttribute("buyitem");
				System.out.println("yyuy"+buyitem);

				String item_id = buyitem[0];
				int quantity = Integer.parseInt(buyitem[3]);
				String userid = buyitem[4];


				//DB update
				buydao.BuyData(userid, item_id, quantity);

				//quantity
				buydao.Quantity(quantity, item_id);
				System.out.println("itemid="+ item_id + " quant="+ quantity );

				//to jsp
				request.setAttribute("message", "購入しました");
				ServletContext context = getServletContext();
				RequestDispatcher rd = context.getRequestDispatcher("/result.jsp");
				rd.forward(request, response);


			} catch (ClassNotFoundException | SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
		}


		String hist = request.getParameter("hist");
		ShopDao histdao = null;
		if(hist != null && hist.equals("hist")){
			try{
				histdao = new ShopDao();
				String userid = (String)session.getAttribute("userid");
				ArrayList<ItemBean> userhist = histdao.UserHistory(userid);


				request.setAttribute("userhist", userhist);
				ServletContext context = getServletContext();
				RequestDispatcher rd = context.getRequestDispatcher("/history.jsp");
				rd.forward(request, response);

			}catch (ClassNotFoundException | SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}

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
