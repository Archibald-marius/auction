package auction.services;

import auction.dao.ItemDao;
import auction.models.Items;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {
    @Autowired
    ItemDao itemDao;

    public void save(Items items) {itemDao.save(items);}

    public void register(Items items) {

        itemDao.save(items);


    }
    public Items getOrder(){
        return itemDao.findFirstByOrderByName();
    }

    public List<Items> getAll(){
        return itemDao.findAll();
    }
    public Items get(Long id) {
        return itemDao.findById(id).get();
    }
}
