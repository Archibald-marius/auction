package auction.controller;

import auction.models.Items;
import auction.services.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PageController {

    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    ModelAndView home(ModelAndView modelAndView){
        Items items = itemService.getOrder();
        long epoch = System.currentTimeMillis()/1000;
        List<Items> itemsList = new ArrayList<>();
        itemsList = itemService.getAll();
        for (Items list : itemsList)
            if (!list.getSold())
                if (System.currentTimeMillis()/1000 - list.getTimestamp() > 604800 )
                {
                    list.setSold(true);
                    
                }
        modelAndView.getModel().put("itemsList", itemsList);
        modelAndView.setViewName("app.homepage");
        return modelAndView;
    }

    @RequestMapping(value = "/rise/{id}")
    public ModelAndView rise(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView();
        Items items = new Items();
        items = itemService.get(id);
        items.addPrice(items);
        itemService.save(items);
        modelAndView.setViewName("app.rise");
        return modelAndView;
    }
}
