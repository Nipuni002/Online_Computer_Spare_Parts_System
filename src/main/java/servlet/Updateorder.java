package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.Customerservice;


@WebServlet("/Updateorder")
public class Updateorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Updateorder() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		customer cus = new customer();
		
		cus.setId(request.getParameter("id"));
		cus.setName(request.getParameter("name"));
		cus.setPrice(request.getParameter("price"));
		cus.setQuantity(request.getParameter("quantity"));
		cus.setOrderDate(request.getParameter("orderDate"));
		cus.setReason(request.getParameter("reason"));
		cus.setEmail(request.getParameter("email"));
		
		Customerservice service = new Customerservice();
		service.updateOrder(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("GetAllrefund");
		dispatcher.forward(request, response);
		
		doGet(request, response);
	}

}
