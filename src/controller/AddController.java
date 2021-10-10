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
 * Servlet implementation class AddController
 */
@WebServlet("/Add")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher = null;
	AdminDAO adminDAO = null;
	MobileDAO mobileDAO = null;

	public AddController() {
		adminDAO = new AdminDAOImp();
		mobileDAO = new MobileDAOImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Mobile mobile = new Mobile();
		// Test
		System.out.println("BRAND :" + request.getParameter("brand"));
		try {

			System.out.println(request.getContextPath());

			mobile.setBrand(request.getParameter("brand"));
			mobile.setModel(request.getParameter("model"));
			mobile.setPrice(Integer.parseInt(request.getParameter("price")));
			mobile.setBattery(Integer.parseInt(request.getParameter("battery")));
			mobile.setBackCamera(request.getParameter("backcamera"));
			mobile.setFrontCamera(request.getParameter("frontcamera"));
			mobile.setDisplay(request.getParameter("display"));
			mobile.setProcessor(request.getParameter("processor"));
			mobile.setRam(Integer.parseInt(request.getParameter("ram")));
			mobile.setRom(Integer.parseInt(request.getParameter("rom")));
			mobile.setOs(request.getParameter("os"));
			mobile.setRating(Double.parseDouble(request.getParameter("rating")));
			mobile.setRelease(request.getParameter("release"));

			boolean status = adminDAO.addMobile(mobile);

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
