package auction.controller;

import auction.models.Items;
import auction.services.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class AddItem {

    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    ModelAndView addItem(ModelAndView modelAndView) {
        Items item = new Items();


        modelAndView.getModel().put("item", item);
        modelAndView.setViewName("app.addItem");
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    ModelAndView addItem(ModelAndView modelAndView, @ModelAttribute(value = "item") @Valid Items item, BindingResult result){
        modelAndView.setViewName("app.addItem");

        if(!result.hasErrors()) {
            itemService.register(item);

            modelAndView.setViewName("redirect:/");
        }

        return modelAndView;
    }
}
