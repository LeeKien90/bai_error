package ra.model.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.model.repository.EmloyeeRepository;
import ra.model.service.IProductService;
import ra.model.untity.Catalog;
import ra.model.untity.Product;

import java.util.List;
@Service
public class ProductServiceImp implements IProductService {
    @Autowired
    private EmloyeeRepository emloyeeRepository;
    @Override
    public List<Product> findAll() {
        return emloyeeRepository.findAll();
    }

    @Override
    public Product findById(int id) {
        return emloyeeRepository.findById(id).get();
    }

    @Override
    public boolean save(Product pro) {
        return emloyeeRepository.save(pro);
    }

    @Override
    public boolean update(Product pro) {
        return emloyeeRepository.save(pro);
    }

    @Override
    public boolean delete(int id) {
        return emloyeeRepository.delete(id);
    }

    @Override
    public List<Catalog> search(String name) {
        return emloyeeRepository.customSearchByName(name) ;
    }
}
