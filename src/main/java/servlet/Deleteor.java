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


@WebServlet("/Deleteor")
public class Deleteor extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Deleteor() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		customer cus = new customer();
		cus.setId(request.getParameter("id"));
		
		Customerservice service = new Customerservice();
		service.deleteOrder(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("GetAllrefund");
		dispatcher.forward(request, response);
		
	}

}
