package BeanDao;

import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserBean execute(HttpServletRequest request)  {
		// TODO 自動生成されたメソッド・スタブ


		LoginDao logindao = null;
		UserBean userbean = null;
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		HttpSession session = request.getSession(true);

		try{
			if(id != null && !id.equals("") && password != null && !password.equals("")){
				logindao = new LoginDao();
				userbean = logindao.LoginData(id, password);

				if(userbean == null){
					request.setAttribute("message", "IDかPASSWORDが間違っています");
				}else{
					session.setAttribute("userid", id);
					request.setAttribute("userbean", userbean);

				}
			}else{
				request.setAttribute("message", "ちゃんと入力して");
			}

		}catch(SQLException | ClassNotFoundException e){
			request.setAttribute("message", "JDBCエラー");
		}finally{
			if(logindao != null){
				logindao.close();
			}

		}return userbean;


	}



}
