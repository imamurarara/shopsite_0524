package shopservlet;

import java.io.IOException;
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
import BeanDao.shop;

/**
 * Servlet implementation class ItemServlet
 */
@WebServlet("/ItemServlet")
public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(false);


		request.setCharacterEncoding("UTF-8");
		ArrayList<ItemBean> item = null;

		try{
				shop shop = new shop();
				item = shop.execute(request);

				String cate = request.getParameter("cate");
				System.out.println("cate="+cate);

				if( cate != null && !cate.equals("")){
					ArrayList<ItemBean> catelist = new ArrayList<ItemBean>();

					for(ItemBean cateitem : item){
						if(cate.equals(cateitem.getCategory())){

							cateitem.getItem_id();
							cateitem.getItem_name();
							cateitem.getPrice();
							cateitem.getItemquantity();

							catelist.add(cateitem);
						}
					}

					request.setAttribute("getcate", catelist);

					ServletContext context = getServletContext();
					RequestDispatcher rd = context.getRequestDispatcher("/itemlist.jsp");
					rd.forward(request, response);

				}else{

					if(item != null){
					request.setAttribute("itembean", item);
					System.out.println(item);
					ServletContext context = getServletContext();
					RequestDispatcher rd = context.getRequestDispatcher("/itemlist.jsp");
					rd.forward(request, response);

					}else{
						request.setAttribute("message", "商品がないです");
						ServletContext context = getServletContext();
						RequestDispatcher rd = context.getRequestDispatcher("/itemlist.jsp");
						rd.forward(request, response);
					}

				}

		}catch(Exception e){
			request.setAttribute("message", "エラーです");
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
