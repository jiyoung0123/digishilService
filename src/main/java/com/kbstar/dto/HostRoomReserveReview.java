package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class HostRoomReserveReview {
    private String hostId;
    private String hostName;
    private String hostPwd;
    private String hostImage;
    private String hostIntro;
    private Integer hostSuper;
    private String hostLang;
    private double hostRate;
    private double hostYear;
    private String hostJob;
    private Integer hostVerified;
    private Date hostRegDate;
    private Date hostDelDate;
    private Integer roomId;
    private Integer roomPrice;
    private String roomName;
    private String roomAddress;
    private String roomAddress2;
    private String roomLoc;
    private String roomInfo;
    private String roomIntro;
    private Integer roomClean;
    private Integer roomPet;
    private Integer roomWPrice;
    private Integer roomCap;
    private String roomType;
    private long roomLat;
    private long roomLng;
    private String roomImage1;
    private String roomImage2;
    private String roomImage3;
    private String roomImage4;
    private String roomImage5;
    private String roomImage6;
    private Integer roomLikes;
    private Integer reserveId;
    private String guestId;
    private Date reserveCheckIn;
    private Date reserveCheckOut;
    private long reservePrice;
    private long reserveConfirm;
    private Integer reserveCal;
    private Integer reserveCap;
    private String reserveStatus;
    private long reservePayRate;
    private long reservePayAmount;
    private Date reservePayDate;
    private String reservePayType;
    private long reserveDiscount;
    private long reservePoint;
    private String reserveBank;
    private long reserveAccHolder;
    private String reserverApi;
    private Integer reserveRefund;
    private String guestName;

    private Integer reviewId;
    private long reviewRate;
    private String reviewContents1;
    private String reviewContents2;
    private String reviewContents3;
    private String reviewContents4;
    private Integer reviewHidden;
    private String guestId2;
    private Integer reserveReply;



    public HostRoomReserveReview(Integer roomId, String hostId, Integer roomPrice, String roomName, String roomAddress, String roomAddress2, String roomLoc) {
        this.roomId = roomId;
        this.hostId = hostId;
        this.roomPrice = roomPrice;
        this.roomName = roomName;
        this.roomAddress = roomAddress;
        this.roomAddress2 = roomAddress2;
        this.roomLoc = roomLoc;
    }
}
