package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import database.DBConnection;
import entity.Mobile;

public class MobileDAOImp implements MobileDAO {

	// List Of Mobile Data
	@Override
	public List<Mobile> getAllMobiles() {
		List<Mobile> allMobiles = null;
		Mobile mobile = null;

		try {

			allMobiles = new ArrayList<Mobile>();

			String sql = "SELECT id, brand, model, price, processor, battery, ram, rom, frontcamera, backcamera, display, rating, release,os FROM public.mobile";

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
			e.printStackTrace();
		}
		System.out.println(mobile.getBrand());
		return allMobiles;
	}

}
