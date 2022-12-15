package ra.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ra.model.untity.Product;

import java.util.List;

@Repository
public interface EmloyeeRepository extends JpaRepository<Product,Integer> {
    @Query(value = "select o from Employee o where o.name like '%'||:name||'%'"
            +" OR o.email like '%'||:name||'%'")
    List<Product> customSearchByName(@Param("name") String name);

}
