package BeanDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class GoalBean
 */
@WebServlet("/GoalBean")
public class GoalBean extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String id;
	private String goal;
	private int startDate;
	private int goalDate;


	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGoal() {
		return goal;
	}
	public void setGoal(String goal) {
		this.goal = goal;
	}
	public int getStartDate() {
		return startDate;
	}
	public void setStartDate(int startDate) {
		this.startDate = startDate;
	}
	public int getGoalDate() {
		return goalDate;
	}
	public void setGoalDate(int goalDate) {
		this.goalDate = goalDate;
	}


}
