package auction.controller;

import auction.models.Items;
import auction.models.SearchObject;
import auction.services.ItemService;
import auction.services.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
public class Search {

    @Autowired
    private SearchService searchService;

    @Autowired
    private ItemService itemService;


        @RequestMapping(value = "/search", method = RequestMethod.GET)
        ModelAndView search(ModelAndView modelAndView) {
            SearchObject searchObject = new SearchObject();
            modelAndView.getModel().put("searchObject", searchObject);
            modelAndView.setViewName("app.search");
            return modelAndView;
        }
    @RequestMapping(value = "/search", method = RequestMethod.POST)
    ModelAndView search(ModelAndView modelAndView, @ModelAttribute(value = "searchObject") @Valid SearchObject searchObject, BindingResult result){
        modelAndView.setViewName("app.search");

        if(!result.hasErrors()) {
            searchService.register(searchObject);
            modelAndView.setViewName("redirect:/result/" + searchObject.getId());
        }
        return modelAndView;
    }
    @RequestMapping(value = "/result/{id}")
    public ModelAndView showResult(@PathVariable("id") Long id){
        ModelAndView modelAndView = new ModelAndView();

        List<Items> items = new ArrayList<>();
        List<Items> result = new ArrayList<>();
        SearchObject searchObject = searchService.get(id);
        Items sample = new Items();
        items = itemService.getAll();
        for (Items list : items){

            if (searchObject.getName().equals(""))
                sample.setName(list.getName());
            else
                sample.setName(searchObject.getName());

            if (searchObject.getType().equals(""))
                sample.setType(list.getType());
            else
                sample.setType(searchObject.getType());

            if (searchObject.getYear() == null)
                sample.setYear(list.getYear());
            else
                sample.setYear(searchObject.getYear());

            if (searchObject.getType().equals(""))
                sample.setType(list.getType());
            else
                sample.setType(searchObject.getType());

            if (searchObject.getAuthor().equals(""))
                sample.setAuthor(list.getAuthor());
            else
                sample.setAuthor(searchObject.getAuthor());

            if (searchObject.getPrice() == null)
                sample.setPrice(list.getPrice());
            else
                sample.setPrice(searchObject.getPrice());
            System.out.println("Цена" + sample.getName() + sample.getPrice() + sample.getAuthor() + sample.getType());
            if (list.getName().equals(sample.getName())
                    && list.getType().equals(sample.getType())
                && list.getYear().equals(sample.getYear())
                && list.getAuthor().equals(sample.getAuthor())
                && list.getPrice() <= sample.getPrice())
                result.add(list);
        }
        modelAndView.getModel().put("result", result);
        modelAndView.setViewName("app.result");

        return modelAndView;
    }
    }

