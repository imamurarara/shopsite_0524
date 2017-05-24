package BeanDao;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet implementation class shop
 */
@WebServlet("/shop")
public class shop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ArrayList<ItemBean> execute(HttpServletRequest request)  {
		// TODO 自動生成されたメソッド・スタブ
		ShopDao shopdao = null;
		ArrayList<ItemBean> itembean = null;
		try{
				shopdao = new ShopDao();
				itembean = shopdao.ItemData();

				if(itembean == null){
					request.setAttribute("message", "商品がありません");
				}else{
					request.setAttribute("itembean", itembean);
				}

		}catch(SQLException | ClassNotFoundException e){
			request.setAttribute("message", "JDBCエラー");
		}finally{
			if(shopdao != null){
				shopdao.close();
			}

		}return itembean;
	}


}
