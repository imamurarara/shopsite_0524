package BeanDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class DateDao
 */
@WebServlet("/DateDao")
public class DateDao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection connection;

	public DateDao() throws ClassNotFoundException, SQLException{

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


	public UserBean date(String id, int date) {
		return null;
	}



}
