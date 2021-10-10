package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompareDAO;
import dao.CompareDAOImp;
import dao.MobileDAO;
import dao.MobileDAOImp;
import entity.Compare;
import entity.Mobile;

/**
 * Servlet implementation class CamparisonController
 */
@WebServlet("/Filter")
public class CamparisonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Reference Variable

	MobileDAO mobileDao = null;
	CompareDAO compareDAO = null;

	RequestDispatcher dispatcher = null;

	public CamparisonController() {
		mobileDao = new MobileDAOImp();
		compareDAO = new CompareDAOImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Compare compare = new Compare();
		System.out.println(request.getContextPath());
		// Test
		System.out.println(request.getParameter("price"));
		System.out.println(request.getParameter("brand1"));
		System.out.println(request.getParameter("brand2"));

		// Set Parameters in Compare.java From Compare.jsp

		int price = Integer.parseInt(request.getParameter("price"));
		String brand1 = request.getParameter("brand1");
		String brand2 = request.getParameter("brand2");
		compare.setPrice(price);
		compare.setBrand1(brand1);
		compare.setBrand2(brand2);

		List<Mobile> getListBrand1 = compareDAO.getListBrand(brand1, price);
		List<Mobile> getListBrand2 = compareDAO.getListBrand(brand2, price);

		request.setAttribute("getListBrand1", getListBrand1);
		request.setAttribute("getListBrand2", getListBrand2);

		dispatcher = request.getRequestDispatcher("/views/Filters.jsp");
		dispatcher.forward(request, response);

	}

}
