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
import entity.Mobile;

@WebServlet("/Compare")
public class CompareController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher = null;
	MobileDAO mobileDao = null;
	CompareDAO compareDAO = null;

	public CompareController() {
		mobileDao = new MobileDAOImp();
		compareDAO = new CompareDAOImp();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String[] brandId = request.getParameterValues("compare");

		System.out.println("SIZE : " + brandId.length);

		for (int i = 0; i < brandId.length; i++) {
			System.out.println(brandId[i]);
		}

		List<Mobile> allMobiles = compareDAO.getCompareBrands(brandId);

		request.setAttribute("allMobiles", allMobiles);
		dispatcher = request.getRequestDispatcher("/views/Compare.jsp");
		dispatcher.forward(request, response);

	}

}
