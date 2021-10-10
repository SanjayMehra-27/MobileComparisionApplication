package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.DBConnection;
import entity.Admin;
import entity.Mobile;

public class AdminDAOImp implements AdminDAO {

	@Override
	public String getAdminLogin(Admin admin) {

		try {
			String sql = "SELECT * FROM login WHERE email=? AND password=?";
			Connection connection = DBConnection.openConnection();
			PreparedStatement ps1 = connection.prepareStatement(sql);

			ps1.setString(1, admin.getEmail());
			ps1.setString(2, admin.getPassword());

			ResultSet rs1 = ps1.executeQuery();

			System.out.println("User Email :" + admin.getEmail());
			System.out.println("Password :" + admin.getPassword());
			if (rs1.next()) {

				System.out.println("Password" + admin.getPassword());
				return "true";

			} else {
				System.out.println("false");
				return "false";
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "error";

	}

	@Override
	public boolean addMobile(Mobile mobile) {
		boolean flag = false;

		try {

			String sql = "INSERT INTO public.mobile(brand, model, price, processor, battery, ram, rom, frontcamera, backcamera, display, rating, release, os) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			Connection connection = DBConnection.openConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, mobile.getBrand());
			preparedStatement.setString(2, mobile.getModel());
			preparedStatement.setInt(3, mobile.getPrice());
			preparedStatement.setString(4, mobile.getProcessor());
			preparedStatement.setInt(5, mobile.getBattery());
			preparedStatement.setInt(6, mobile.getRam());
			preparedStatement.setInt(7, mobile.getRom());
			preparedStatement.setString(8, mobile.getFrontCamera());
			preparedStatement.setString(9, mobile.getBackCamera());
			preparedStatement.setString(10, mobile.getDisplay());
			preparedStatement.setDouble(11, mobile.getRating());
			preparedStatement.setString(12, mobile.getRelease());
			preparedStatement.setString(13, mobile.getOs());

			preparedStatement.executeUpdate();

			flag = true;
			System.out.println(sql + flag);
		}

		catch (Exception e) {
			e.getStackTrace();
		}
		return flag;
	}

	@Override
	public boolean updateMobile(Mobile mobile) {

		boolean flag = false;

		try {

			String sql = "UPDATE public.mobile SET brand=?, model=?, price=?, processor=?, battery=?, ram=?, rom=?, frontcamera=?, backcamera=?, display=?, rating=?, release=?, os=? WHERE id = ?";

			Connection connection = DBConnection.openConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, mobile.getBrand());
			preparedStatement.setString(2, mobile.getModel());
			preparedStatement.setInt(3, mobile.getPrice());
			preparedStatement.setString(4, mobile.getProcessor());
			preparedStatement.setInt(5, mobile.getBattery());
			preparedStatement.setInt(6, mobile.getRam());
			preparedStatement.setInt(7, mobile.getRom());
			preparedStatement.setString(8, mobile.getFrontCamera());
			preparedStatement.setString(9, mobile.getBackCamera());
			preparedStatement.setString(10, mobile.getDisplay());
			preparedStatement.setDouble(11, mobile.getRating());
			preparedStatement.setString(12, mobile.getRelease());
			preparedStatement.setString(13, mobile.getOs());
			preparedStatement.setInt(14, mobile.getId());

			preparedStatement.executeUpdate();

			flag = true;
			System.out.println(sql + flag);
		}

		catch (Exception e) {
			e.getStackTrace();
		}
		return flag;
	}

	@Override
	public boolean deleteMobile(int id) {
		boolean flag = false;

		try {

			String sql = "DELETE FROM public.mobile WHERE id = ?";

			Connection connection = DBConnection.openConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, id);

			preparedStatement.executeUpdate();

			flag = true;
			System.out.println(sql + flag);
		}

		catch (Exception e) {
			e.getStackTrace();
		}
		return flag;
	}

}
