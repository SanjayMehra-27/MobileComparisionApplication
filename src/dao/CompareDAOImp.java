package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import database.DBConnection;
import entity.Mobile;

public class CompareDAOImp implements CompareDAO {

	@Override
	public List<Mobile> getListBrand(String brand, int price) {
		int price2 = price + 2000;
		int price1 = price;
		if (price == 22000) {

			price1 = price;
			price2 = 100000;
		}
		Mobile mobile = null;

		List<Mobile> allMobiles = null;

		try {
			allMobiles = new ArrayList<Mobile>();

			String sql = "SELECT id, brand, model, price, processor, battery, ram, rom, frontcamera, backcamera, display, rating, release, os FROM public.mobile where price >= '"
					+ price1 + "' AND price <= '" + price2 + "' AND brand = '" + brand + "'";

			// get the database connection
			Connection connection = DBConnection.openConnection();

			Statement statement = connection.createStatement();

			// Execute the sql query
			ResultSet resultSet = statement.executeQuery(sql);
			System.out.println(sql);// test

			// Process the resultset
			while (resultSet.next()) {

				mobile = new Mobile();

				mobile.setId(resultSet.getInt("id"));
				mobile.setBrand(resultSet.getString("brand"));
				mobile.setModel(resultSet.getString("model"));
				mobile.setPrice(resultSet.getInt("price"));
				mobile.setProcessor(resultSet.getString("processor"));
				mobile.setBattery(resultSet.getInt("battery"));
				mobile.setRam(resultSet.getInt("ram"));
				mobile.setRom(resultSet.getInt("rom"));
				mobile.setFrontCamera(resultSet.getString("frontcamera"));
				mobile.setBackCamera(resultSet.getString("backcamera"));
				mobile.setDisplay(resultSet.getString("display"));
				mobile.setRating(resultSet.getDouble("rating"));
				mobile.setRelease(resultSet.getString("release"));
				mobile.setOs(resultSet.getString("os"));

				allMobiles.add(mobile);

			}

		} catch (Exception e) {
			e.getStackTrace();
		}

		return allMobiles;
	}

	public List<Mobile> getCompareBrands(String[] brandId) {

		Mobile mobile = null;
		List<Mobile> allMobiles = null;
		String addORId = " OR id = ";
		String NewaddORId = " ";

		for (int i = 1; i < brandId.length; i++) {
			NewaddORId = NewaddORId + addORId + "'" + brandId[i] + "'";
			System.out.println(addORId);

		}

		try {

			allMobiles = new ArrayList<Mobile>();

			String sql = "SELECT id, brand, model, price, processor, battery, ram, rom, frontcamera, backcamera, display, rating, release, os FROM public.mobile where id = '"
					+ brandId[0] + "'" + NewaddORId;
			System.out.println("Compare SQL : " + sql);// test
			// get the database connection
			Connection connection = DBConnection.openConnection();

			Statement statement = connection.createStatement();

			// Execute the sql query
			ResultSet resultSet = statement.executeQuery(sql);
			System.out.println("Compare SQL : " + sql);// test

			// Process the resultset
			while (resultSet.next()) {

				mobile = new Mobile();

				mobile.setId(resultSet.getInt("id"));
				mobile.setBrand(resultSet.getString("brand"));
				mobile.setModel(resultSet.getString("model"));
				mobile.setPrice(resultSet.getInt("price"));
				mobile.setProcessor(resultSet.getString("processor"));
				mobile.setBattery(resultSet.getInt("battery"));
				mobile.setRam(resultSet.getInt("ram"));
				mobile.setRom(resultSet.getInt("rom"));
				mobile.setFrontCamera(resultSet.getString("frontcamera"));
				mobile.setBackCamera(resultSet.getString("backcamera"));
				mobile.setDisplay(resultSet.getString("display"));
				mobile.setRating(resultSet.getDouble("rating"));
				mobile.setRelease(resultSet.getString("release"));
				mobile.setOs(resultSet.getString("os"));

				allMobiles.add(mobile);

			}

		} catch (Exception e) {
			e.getStackTrace();
		}

		return allMobiles;
	}

}
