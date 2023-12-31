package com.kbstar.controller;

import com.kbstar.dto.Guest;
import com.kbstar.dto.Reserve;
import com.kbstar.service.GuestService;
import com.kbstar.service.ReserveService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Slf4j
public class LoginController {

    @Autowired
    GuestService guestService;
    @Autowired
    ReserveService reserveService;
    @Autowired
    private BCryptPasswordEncoder encoder;
    @RequestMapping("/loginImpl")
    public String loginImpl(Model model, String guestId, String guestPwd, HttpSession session) {
        log.info("---------------------------------"+guestId, guestPwd);
        Guest guest = null;

        try {
            guest = guestService.get(guestId);
            if(guest != null && encoder.matches(guestPwd,guest.getGuestPwd())){
                if(guest.getGuestPwdChange() == 1){
                    session.setMaxInactiveInterval(1000000);
                    session.setAttribute("loginGuest",guest);
//                    model.addAttribute("center","center");
                    return "redirect:/guestPwd?id="+guest.getGuestId();
                }
                session.setMaxInactiveInterval(1000000);
                session.setAttribute("loginGuest",guest);
                model.addAttribute("center","center");
                return "redirect:/";
            }if(guest == null || !encoder.matches(guestPwd,guest.getGuestPwd()) || guest.getGuestId() == ""){
                model.addAttribute("msg","아이디 혹은 비밀번호를 확인하세요.");
                model.addAttribute("center","login");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
                return "index";
    }
}
