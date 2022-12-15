package ra.model.service;

import ra.model.untity.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    Product findById(int id);
    boolean save(Product pro);
    boolean update(Product pro);
    boolean delete(int id);
}
