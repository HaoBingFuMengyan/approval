package com.tent.cloud.web.main;

import com.tent.common.utils.S;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/")
public class PageAction {

    @RequestMapping(value = "index.html",method = RequestMethod.GET)
    public String index(Model model){
        return S.toPage("page/index");
    }

}
