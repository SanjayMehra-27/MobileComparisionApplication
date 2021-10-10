package dao;

import entity.Admin;
import entity.Mobile;

public interface AdminDAO {

	String getAdminLogin(Admin admin);

	boolean addMobile(Mobile mobile);

	boolean updateMobile(Mobile mobile);

	boolean deleteMobile(int id);

}
