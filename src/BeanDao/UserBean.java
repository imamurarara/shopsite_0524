package BeanDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class UserBean
 */
@WebServlet("/UserBean")
public class UserBean extends HttpServlet {
	private static final long serialVersionUID = 1L;


	private int id;
	private String password;
	private String name;
	private int data;

	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}







}
