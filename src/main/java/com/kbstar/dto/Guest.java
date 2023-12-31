package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Guest {
    private String guestId;
    private String guestPwd;
    private String guestName;
    private String guestIntro;
    private String guestLang;
    private int guestCoupon;
    private String guestImage;
    private double guestRate;
    private Date guestRegDate;
    private Date guestDelDate;
    private int guestPwdChange;


    public Guest(String guestId, String guestPwd, String guestName) {
        this.guestId = guestId;
        this.guestPwd = guestPwd;
        this.guestName = guestName;
    }

    public Guest(String guestId, String guestIntro, String guestLang, String guestImage) {
        this.guestId = guestId;
        this.guestImage = guestImage;
        this.guestLang = guestLang;
        this.guestIntro = guestIntro;
    }
    public Guest(String guestId, int guestCoupon) {
        this.guestId = guestId;
        this.guestCoupon = guestCoupon;
    }
}

