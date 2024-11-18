package services;

import java.util.List;
import model.customer;

public interface CustomerServiceInterface {
    void addrefund(customer customer);//For add refund.
    List<customer> getById(String id);//For retrieving a refund by their ID.
    List<customer> getAllCustomers();//For retrieving a list of all refunds.
    void updateOrder(customer customer); //For updating refund information.
    void deleteOrder(customer customer); //For deleting a refund.
}
