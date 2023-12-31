package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class RoomSearch {
    private String roomName;
    private String roomLoc;
    private String roomType;
    private int roomCap;
    private int roomPrice;
    private String roomPriceFrom;
    private String roomPriceTo;
    private int hostSuper;

    private String guestId;

    private Date checkInDate;
    private Date checkOutDate;

//    private Date reserveCheckIn;
//    private Date reserveCheckOut;


    public RoomSearch(String roomLoc){
        this.roomLoc = roomLoc;
    }

    public RoomSearch(String roomName, String roomLoc){
        this.roomName = roomName;
        this.roomLoc = roomLoc;
    }

    public RoomSearch(String roomPriceFrom, String roomPriceTo, int roomPrice){
        this.roomPriceFrom = roomPriceFrom;
        this.roomPriceTo = roomPriceTo;

    }


}
