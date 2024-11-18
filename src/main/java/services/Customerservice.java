package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.customer;
import utils.DBConnection;

public class Customerservice implements CustomerServiceInterface {

    @Override
    public void addrefund(customer cus) {
        try {
            String query = "INSERT INTO refund VALUES('" + cus.getId() + "','" + cus.getName() + "','" + cus.getPrice() + "','" +
                            cus.getQuantity() + "','" + cus.getOrderDate() + "','" + cus.getReason() + "','" + cus.getEmail() + "')";
            Statement statement = DBConnection.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<customer> getById(String id) {
        ArrayList<customer> customers = new ArrayList<>();
        try {
            String query = "SELECT * FROM refund WHERE id='" + id + "'";
            Statement statement = DBConnection.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                customer cus = new customer();
                cus.setId(rs.getString("id"));
                cus.setName(rs.getString("name"));
                cus.setPrice(rs.getString("price"));
                cus.setQuantity(rs.getString("quantity"));
                cus.setOrderDate(rs.getString("orderDate"));
                cus.setReason(rs.getString("reason"));
                cus.setEmail(rs.getString("email"));
                customers.add(cus);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public List<customer> getAllCustomers() {
        ArrayList<customer> customers = new ArrayList<>();
        try {
            String query = "SELECT * FROM refund";
            Statement statement = DBConnection.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                customer cus = new customer();
                cus.setId(rs.getString("id"));
                cus.setName(rs.getString("name"));
                cus.setPrice(rs.getString("price"));
                cus.setQuantity(rs.getString("quantity"));
                cus.setOrderDate(rs.getString("orderDate"));
                cus.setReason(rs.getString("reason"));
                cus.setEmail(rs.getString("email"));
                customers.add(cus);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public void updateOrder(customer customer) {
        try {
            String query = "UPDATE refund SET name='" + customer.getName() + "', price='" + customer.getPrice() + "', quantity='" +
                            customer.getQuantity() + "', orderDate='" + customer.getOrderDate() + "', reason='" + customer.getReason() +
                            "', email='" + customer.getEmail() + "' WHERE id='" + customer.getId() + "'";
            Statement statement = DBConnection.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteOrder(customer cus) {
        try {
            String query = "DELETE FROM refund WHERE id='" + cus.getId() + "'";
            Statement statement = DBConnection.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
