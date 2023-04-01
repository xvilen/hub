package com.inventory.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inventory.dao.ProductDao;
import com.inventory.model.Product;

/**
 * Servlet implementation class CategoryWiseServlet
 */
@WebServlet("/CategoryWiseServlet")
public class CategoryWiseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  String category=request.getParameter("categoryname")+"";
	  ProductDao p=new ProductDao();
	  try{
		System.out.println(category);
		
		List<Product> pList=p.findCategoryWiseProducts(category);
		
		System.out.println(pList);
		
		request.setAttribute("products", pList);
	
		request.getRequestDispatcher("CategoryProduct.jsp").forward(request, response);
	}catch(ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  }

}
