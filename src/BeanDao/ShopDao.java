package BeanDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class ShopDao
 */
@WebServlet("/ShopDao")
public class ShopDao extends HttpServlet {
	private static final long serialVersionUID = 1L;


	private Connection connection;

	public ShopDao() throws ClassNotFoundException, SQLException{

		String url = "jdbc:mysql://localhost:3306/shopdata";
		String user = "root";
		String password = "imaima";
		String msg = "";
        try {
        	connection = DriverManager.getConnection(url, user, password);
        }catch (Exception e){
            msg = "ドライバのロードに失敗しました";
            System.out.println(msg);
        }
	}

	public void close(){
			try {
				if(connection != null){
					connection.close();
				}
			} catch (SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
	}

	public ArrayList<ItemBean> ItemData() throws SQLException{

		ArrayList<ItemBean> itemArray = new ArrayList<ItemBean>();
		PreparedStatement ps = null;
		ResultSet rs = null;

		try{
			String sql ="SELECT * FROM item join stok on item.item_id=stok.item_id";
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();

			while(rs.next()){
				ItemBean bean = new ItemBean();
				bean.setItem_id(rs.getString("item_id"));
				bean.setItem_name(rs.getString("item_name"));
				bean.setPrice(rs.getInt("price"));
				bean.setItemquantity(rs.getInt("quantity"));
				bean.setCategory(rs.getString("category"));

				itemArray.add(bean);

			}
			rs.close();

		}finally{
			ps.close();
		}
		return itemArray;
	}


	public void BuyData(String id, String item_id, int quantity) throws SQLException{

		PreparedStatement ps = null;
		try{
			String sql ="insert into history (id, item_id, quantity) values (?, ?, ?)";
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, item_id);
			ps.setInt(3, quantity);
			ps.executeUpdate();

		}finally{
			ps.close();
		};
	}

	public void Quantity(int quantity, String item_id) throws SQLException{

		PreparedStatement ps = null;
		try{
			String sql ="update stok set quantity = quantity-? where item_id=?";
			ps = connection.prepareStatement(sql);
			ps.setInt(1, quantity);
			ps.setString(2, item_id);
			ps.executeUpdate();

		}finally{
			ps.close();
		};
	}


	public ArrayList<ItemBean> UserHistory(String id) throws SQLException{

		PreparedStatement ps = null;
		ResultSet rs = null;
		ItemBean histbean =null;
		ArrayList<ItemBean> histArray = new ArrayList<ItemBean>();
		try{
			String sql ="SELECT * FROM item join history on item.item_id=history.item_id where id =?";
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();

			while(rs.next()){
				histbean = new ItemBean();
				histbean.setItem_id(rs.getString("item_id"));
				histbean.setItem_name(rs.getString("item_name"));
				histbean.setItemquantity(rs.getInt("quantity"));

				histArray.add(histbean);

			}
			rs.close();

		}finally{
			ps.close();
		} return histArray;
	}

}
