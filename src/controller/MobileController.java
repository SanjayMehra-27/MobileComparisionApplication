package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MobileDAO;
import dao.MobileDAOImp;
import entity.Mobile;

/**
 * Servlet implementation class MobileController
 */

@WebServlet("/DashBoard")
public class MobileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MobileDAO mobileDAO = null;
	RequestDispatcher dispatcher = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MobileController() {
		mobileDAO = new MobileDAOImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		showDashboard(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	private void showDashboard(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Fetch List Of Mobiles
		List<Mobile> allMobiles = mobileDAO.getAllMobiles();

		// Compare Two Brands
		String[] brandId = request.getParameterValues("compare");

		request.setAttribute("allMobiles", allMobiles);
		dispatcher = request.getRequestDispatcher("/views/dashboard.jsp");
		dispatcher.forward(request, response);

	}

}
