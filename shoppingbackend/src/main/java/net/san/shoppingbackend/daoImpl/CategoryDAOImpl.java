package net.san.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import net.san.shoppingbackend.dao.CategoryDAO;
import net.san.shoppingbackend.dto.Category;

import org.springframework.stereotype.Repository;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<Category>();

	static {
		// adding second category
		Category category = new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is a some description of television");
		category.setImageURL("tel.png");

		categories.add(category);

		// adding second category
	    category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is a some description of radio");
		category.setImageURL("rad.png");

		categories.add(category);

		// adding second category
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("This is a some description of Laptop");
		category.setImageURL("lap.png");

		categories.add(category);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		// TODO Auto-generated method stub
		//enhance for loop
		for(Category category: categories){
			if(category.getId()==id) return category;
		}
		return null;
	}

}
