package net.san.shoppingbackend.dao;

import java.util.List;

import net.san.shoppingbackend.dto.Category;

public interface CategoryDAO {

	
	
	List<Category> list();
	
	Category get(int id);
	
	
}
