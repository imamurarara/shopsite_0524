package BeanDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


/**
 * Servlet implementation class LoginDao
 */
@WebServlet("/LoginDao")
public class LoginDao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection connection;

	public LoginDao() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
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

	public UserBean LoginData(String id, String password) throws SQLException{

		UserBean bean = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try{
			String sql ="SELECT * FROM user WHERE id =? && pass=?";
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);

			rs = ps.executeQuery();

			System.out.println("pst" + ps.toString());

			while(rs.next()){
				System.out.println("pst" + ps.toString());
				bean = new UserBean();
				bean.setId((Integer)rs.getInt("id"));
				bean.setPassword(rs.getString("pass"));
				bean.setName(rs.getString("name"));
				System.out.println("bean" + bean.toString());
			}
			rs.close();

		}finally{
			ps.close();
		}
		return bean;
	}

	public void userAccount(String id, String pass, String name) throws SQLException{

		UserBean bean = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try{
			String sql ="insert into user (id, pass, name) values (?, ?, ?)";
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pass);
			ps.setString(3, name);

			ps.executeUpdate();

			System.out.println("pst" + ps.toString());


		}finally{
			ps.close();
		}
	}
}
