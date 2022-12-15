package ra.model.service;

import ra.model.untity.Catalog;
import ra.model.untity.Product;

import java.util.List;
import java.util.Optional;

public interface ICatalogService {
    List<Product> findAll();
    Optional<Product> findById(int catalogId);
    boolean save(Catalog cat);
    boolean update(Catalog cat);
    boolean delete(int id);
}
