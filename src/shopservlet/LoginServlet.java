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

import BeanDao.Login;
import BeanDao.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");


		String logact = request.getParameter("logaction");
		String account = request.getParameter("newaccount");

		String newId = request.getParameter("new_id");
		String newName = request.getParameter("new_name");
		String newPassword = request.getParameter("new_password");

		UserBean user = null;
		HttpSession session = request.getSession(true);

		System.out.println("1="+ logact);

		try{
			if( logact != null && logact.equals("logaction")){
				Login login = new Login();
				user = login.execute(request);

				if( user != null ){
				ServletContext context = getServletContext();
				RequestDispatcher rd = context.getRequestDispatcher("/ItemServlet");
				rd.forward(request, response);

				}else{
					request.setAttribute("message", "IDかPASSWORDが間違っています");
					ServletContext context = getServletContext();
					RequestDispatcher rd = context.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
				}


			}else if( account != null && account.equals("newaccount")){

				if(newId != null && !newId.equals("") &&newName != null && !newName.equals("") &&newPassword != null && !newPassword.equals("") ){
					Login newaccount = new Login();
					newaccount.account(newId, newPassword, newName);
					request.setAttribute("message", "会員登録できました。ログイン画面からログインしてください。");
					ServletContext context = getServletContext();
					RequestDispatcher rd = context.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
				}else{
					request.setAttribute("message", "すべて入力してください。");
					ServletContext context = getServletContext();
					RequestDispatcher rd = context.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);

				}

			}

			else{
				request.setAttribute("message", "入力してください");
				ServletContext context = getServletContext();
				RequestDispatcher rd = context.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);

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
