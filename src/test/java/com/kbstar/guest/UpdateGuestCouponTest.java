package com.kbstar.guest;

import com.kbstar.dto.Guest;
import com.kbstar.service.GuestService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateGuestCouponTest {
    @Autowired
    GuestService service;

    @Test
    void contextLoads() {
        try {
            service.updateGuestCoupon(new Guest("justdoitjun@guest.com",30));
        } catch (Exception e) {
            log.info("수정에러..");
            e.printStackTrace();
        }
    }}
