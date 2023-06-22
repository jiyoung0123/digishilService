package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class BrickController {

    String dir = "brick/";
    @RequestMapping("/canvas")
    public String canvas(Model model){

        model.addAttribute("center",dir+"canvas");
        return "index";
    }
}
