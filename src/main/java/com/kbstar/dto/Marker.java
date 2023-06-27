package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Marker {
    private int roomId;
    private String hostId;
    private double roomPrice;
    private String roomName;
    private String roomAddress;
    private String roomLoc;
    private String roomLoc2;
    private String roomInfo;
    private String roomIntro;
    private double roomClean;
    private double roomPet;
    private double roomWPrice;
    private int roomCap;
    private String roomType;
    private double roomLat;
    private double roomLng;
    private String roomImage1;
    private String roomImage2;
    private String roomImage3;
    private String roomImage4;
    private String roomImage5;
    private String roomImage6;
    private Integer roomLikes;
    private MultipartFile mImg;

    public Marker(Integer roomId, String hostId, Integer roomPrice, String roomName, String roomAddress, double roomLat, double roomLng, String roomLoc, String roomLoc2) {
        this.roomId = roomId;
        this.hostId = hostId;
        this.roomPrice = roomPrice;
        this.roomName = roomName;
        this.roomAddress = roomAddress;
        this.roomLat = roomLat;
        this.roomLng = roomLng;
        this.roomLoc = roomLoc;
        this.roomLoc2 = roomLoc2;
    }

}
