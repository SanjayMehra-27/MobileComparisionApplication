package dao;

import java.util.List;

import entity.Mobile;

public interface CompareDAO {

	// Fetch List Of Mobile Details with same brands
	List<Mobile> getListBrand(String brand, int price);

	List<Mobile> getCompareBrands(String[] brandId);

}
