package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import bean.User;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	private User x;
	private String email;
	private String passwd;

	@Override
	public void init() {
		userDAO = new UserDAO();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;chartset=utf-8");
		PrintWriter out = response.getWriter();
//		if (request.getParameter("passwd").trim().length() != 0) {
		email = request.getParameter("email");
		System.out.println(email);
		passwd = request.getParameter("passwd");
		System.out.println(passwd);
//		}

		try {
			User searchemail = userDAO.searchmeail(email);
//			User searchpassowrd = userDAO.searchpassword(passwd); /// 我拿了userDAO 的函數seachpassword(password) 放給bean User
			/// 參考變數設定為 searchpassowrd
			if (searchemail == null) {
				out.print("<script> alert(\"請您重新輸入帳號密碼!\"); </script>");
				request.getRequestDispatcher("login.html").include(request, response);
			} else if (email.equals(searchemail.getEmail()) && passwd.equals(searchemail.getPassword())) {
				System.out.println("DB撈出來的資料: " + searchemail.getEmail());
				System.out.println("DB撈出來的資料: " + searchemail.getPassword());
				request.getRequestDispatcher("index.jsp").forward(request, response);

			} else {
				out.print("<script> alert(\"請您重新輸入帳號密碼!\"); </script>");
				request.getRequestDispatcher("login.html").include(request, response);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
