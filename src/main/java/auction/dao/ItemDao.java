package auction.dao;

import auction.models.Items;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ItemDao extends CrudRepository<Items, Long> {
    Items findFirstByOrderByName();

    @Query("SELECT e FROM Items e")
    List<Items> findAll();
}
