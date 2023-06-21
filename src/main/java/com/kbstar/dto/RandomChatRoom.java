package com.kbstar.dto;

import lombok.*;
import org.springframework.web.socket.WebSocketSession;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 * @desc 는 문자 채팅 방을 위한 dto 클래
 * */
// Stomp 를 통해 pub/sub 를 사용하면 구독자 관리가 알아서 된다!!
// 따라서 따로 세션 관리를 하는 코드를 작성할 필도 없고,
// 메시지를 다른 세션의 클라이언트에게 발송하는 것도 구현 필요가 없다!
// Stomp 를 통해 pub/sub 를 사용하면 구독자 관리가 알아서 된다!!
// 따라서 따로 세션 관리를 하는 코드를 작성할 필도 없고,
// 메시지를 다른 세션의 클라이언트에게 발송하는 것도 구현 필요가 없다!
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RandomChatRoom {
    private String createUserId;
    private String roomId; // 채팅방 아이디
    private String roomName; // 채팅방 이름
    private long userCount; // 채팅방 인원수
    private int maxUserCnt; // 채팅방 최대 인원 제한

    private HashMap<String, String> userlist = new HashMap<String, String>();

    private String roomPwd; // 채팅방 삭제시 필요한 pwd
    private boolean secretChk; // 채팅방 잠금 여부


    public enum ChatType{  // 화상 채팅, 문자 채팅
        MSG, RTC
    }
    private ChatType chatType; //  채팅 타입 여부

//    public RandomChatRoom create(String roomName){
//        RandomChatRoom chatRoom = new RandomChatRoom();
//        chatRoom.roomId = UUID.randomUUID().toString();
//        chatRoom.roomName = roomName;
//
//        return chatRoom;
//    }

    // ChatRoomDto 클래스는 하나로 가되 서비스를 나누었음
    public ConcurrentMap<String, ?> userList = new ConcurrentHashMap<>();

}