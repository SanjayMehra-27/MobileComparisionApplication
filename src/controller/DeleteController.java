package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import dao.AdminDAOImp;
import dao.MobileDAO;
import dao.MobileDAOImp;
import entity.Mobile;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/Delete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher = null;
	AdminDAO adminDAO = null;
	MobileDAO mobileDAO = null;

	public DeleteController() {
		adminDAO = new AdminDAOImp();
		mobileDAO = new MobileDAOImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Test
		System.out.println("ID :" + request.getParameter("id"));
		int id = Integer.parseInt(request.getParameter("id"));
		try {

			boolean status = adminDAO.deleteMobile(id);

			// Fetch List Of Mobiles
			List<Mobile> allMobiles = mobileDAO.getAllMobiles();

			request.setAttribute("allMobiles", allMobiles);

		} catch (Exception e) {
			e.getStackTrace();
		}

		dispatcher = request.getRequestDispatcher("/views/Admin.jsp");
		dispatcher.forward(request, response);

	}

}
