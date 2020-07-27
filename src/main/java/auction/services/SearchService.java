package auction.services;

import auction.dao.ItemDao;
import auction.dao.SearchDao;
import auction.models.Items;
import auction.models.SearchObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchService {
    @Autowired
    private SearchDao searchDao;

    public void save(SearchObject searchObject) {searchDao.save(searchObject);}

    public void register(SearchObject searchObject) {

        searchDao.save(searchObject);


    }
    public SearchObject getOrder(){
        return searchDao.findFirstByOrderByName();
    }

    public List<SearchObject> getAll(){
        return searchDao.findAll();
    }
    public SearchObject get(Long id) {
        return searchDao.findById(id).get();
    }
}
