package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Board {
    private Integer boardId;
    private String guestId;
    private String boardType;
    private String boardTitle;
    private String boardContents;
    private Integer boardReply;
    private Date boardDate;
    private Date boardUpdate;
    private Integer boardReserve;
    private String boardImage1;
    private String boardImage2;
    private String boardImage3;


    public Board(Integer boardId, String guestId, String boardTitle, String boardContents, Date boardDate) {
        this.boardId = boardId;
        this.guestId = guestId;
        this.boardTitle = boardTitle;
        this.boardContents = boardContents;
        this.boardDate = boardDate;
    }
}

