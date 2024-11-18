package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer; // Make sure the class name is capitalized
import services.Customerservice;

@WebServlet("/GetAllrefund")
public class GetAllrefund extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public GetAllrefund() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customerservice customerService = new Customerservice(); // Create an instance of Customerservice
        
        List<customer> customers = customerService.getAllCustomers(); // Call the method on the instance
        request.setAttribute("customers", customers);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("returntable.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
