package ra.model.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ra.model.repository.EmloyeeRepository;
import ra.model.service.ICatalogService;
import ra.model.untity.Catalog;
import ra.model.untity.Product;


import java.util.List;
import java.util.Optional;

@Service
public class CatalogServiceImp implements ICatalogService {
@Autowired
private EmloyeeRepository emloyeeRepository;
    @Override
    public List<Product> findAll() {
        return emloyeeRepository.findAll();
    }

    @Override
    public Optional<Product> findById(int catalogId) {
        return emloyeeRepository.findById(catalogId);
    }

    @Override
    public boolean save(Catalog cat) {
        emloyeeRepository.save(cat);
        return false;
    }

    @Override
    public boolean update(Catalog cat) {
        emloyeeRepository.save(cat);
        return false;
    }

    @Override
    public boolean delete(int id) {
        emloyeeRepository.delete(id);
    }

    @Override
    public List<Catalog> search(String name) {
        return emloyeeRepository.customSearchByName(name) ;
    }

}
