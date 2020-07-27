package auction.dao;

import auction.models.Items;
import auction.models.SearchObject;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SearchDao extends CrudRepository<SearchObject, Long> {
    SearchObject findFirstByOrderByName();

    @Query("SELECT e FROM SearchObject e")
    List<SearchObject> findAll();
}
