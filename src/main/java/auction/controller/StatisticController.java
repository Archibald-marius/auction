package auction.controller;

import auction.models.Items;
import auction.services.ItemService;
import org.hibernate.cache.spi.support.AbstractReadWriteAccess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class StatisticController {

    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "/statistics", method = RequestMethod.GET)
    ModelAndView statistics(ModelAndView modelAndView){
        Items items = itemService.getOrder();
        List<Items> itemsList = new ArrayList<>();
        itemsList = itemService.getAll();
        Double total_price = 0.0;
        Double soltLotPrice = 0.0;
        if (itemsList.size() != 0)
        for (Items items_list: itemsList) {
            if (items_list.getPrice() != null) {
                total_price += items_list.getPrice();
                if (items_list.getSold() == true)
                    soltLotPrice += items_list.getPrice();
            }
        }

        modelAndView.getModel().put("total_price", total_price);
        modelAndView.getModel().put("soltLotPrice", soltLotPrice);
        modelAndView.setViewName("app.statistics");
        return modelAndView;
    }
}
