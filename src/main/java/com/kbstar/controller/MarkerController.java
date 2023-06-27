package com.kbstar.controller;

import com.kbstar.dto.Marker;
import com.kbstar.service.MarkerService;
import com.kbstar.service.RoomService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/marker")
public class MarkerController {
    @Autowired
    MarkerService markerService;
    @Autowired
    RoomService roomService;
    String dir = "marker/";




    @Value("${uploadimgdir}")
    String imgdir;
    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("center",dir+"add");
        return "index";
    }
    @RequestMapping("/addimpl")
    public String addimpl(Model model, Marker obj) throws Exception {
        MultipartFile mf = obj.getMImg();
        String imgname = mf.getOriginalFilename();
        obj.setRoomImage1(imgname);
        markerService.register(obj);
        FileUploadUtil.saveFile(mf,imgdir);
        return "redirect:all";
    }
    @RequestMapping("/deleteimpl")
    public String deleteimpl(Model model,int id) throws Exception {
        markerService.remove(id);
        return "redirect:all";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, Marker obj) throws Exception {
        MultipartFile mf = obj.getMImg();
        String new_imgname = mf.getOriginalFilename();
        if(new_imgname.equals("") || new_imgname == null){
            markerService.modify(obj);
        }else{
            obj.setRoomImage1(new_imgname);
            markerService.modify(obj);
            FileUploadUtil.saveFile(mf,imgdir);
        }

        return "redirect:detail?id="+obj.getHostId();
    }

    @RequestMapping("/all")
    public String all(Model model) throws Exception {
        List<Marker> list = null;
        list = markerService.get();
        model.addAttribute("mlist",list);
        model.addAttribute("center",dir+"all");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, int id) throws Exception {
        Marker obj = null;
        obj = markerService.get(id);
        model.addAttribute("gmarker",obj);
        model.addAttribute("center",dir+"detail");
        return "index";
    }


    @RequestMapping("/address")
    public String address(Model model) throws Exception {
        //model.addAttribute("hostId", hostId);
        model.addAttribute("center",dir+"address");
        return "index";
    }

    @RequestMapping("/addressimpl")
    public String addressimpl(Model model) throws Exception {
        //model.addAttribute("hostId", hostId);
        model.addAttribute("center",dir+"address");
        return "index";
    }

    @RequestMapping("/map03")
    public String map03(Model model){
        model.addAttribute("center",dir+"map03");
        return "index";
    }






}