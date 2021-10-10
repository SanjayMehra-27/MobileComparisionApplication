package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;
import dao.AdminDAOImp;
import dao.MobileDAO;
import dao.MobileDAOImp;
import entity.Admin;
import entity.Mobile;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/Admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher = null;
	AdminDAO adminDAO = null;
	MobileDAO mobileDAO = null;

	public AdminController() {
		adminDAO = new AdminDAOImp();
		mobileDAO = new MobileDAOImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		Admin admin = new Admin();

		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));

		System.out.println(request.getParameter("email") + request.getParameter("password"));

		String status = adminDAO.getAdminLogin(admin);

		if (status.equals("true")) {
			System.out.println(status);

			// Fetch List Of Mobiles
			List<Mobile> allMobiles = mobileDAO.getAllMobiles();

			session.setAttribute("emailID", admin.getEmail());
			request.setAttribute("allMobiles", allMobiles);

			dispatcher = request.getRequestDispatcher("/views/Admin.jsp");
			dispatcher.forward(request, response);
		}

		if (status.equals("false")) {

			request.setAttribute("SuccessMessage", "College ID Or Password Incorrecct");
			dispatcher = request.getRequestDispatcher("/views/AdminLogin.jsp");
			dispatcher.forward(request, response);
		}
		if (status.equals("error")) {

			request.setAttribute("SuccessMessage", "Some Error Occured ! Please Try Again");
			dispatcher = request.getRequestDispatcher("/views/AdminLogin.jsp");
			dispatcher.forward(request, response);
		}

	}

}
