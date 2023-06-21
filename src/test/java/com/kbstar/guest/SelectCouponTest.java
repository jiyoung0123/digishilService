package com.kbstar.guest;


import com.kbstar.dto.Guest;
import com.kbstar.service.GuestService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@Slf4j
@SpringBootTest
class SelectCouponTest {
    @Autowired
    GuestService guestService;

    @Test
    void contextLoads() {
        try {
            guestService.selectGuestCoupon("justdoitjun@guest.com");
            log.info("--------------------------------------등록정상");
        } catch (Exception e) {
            log.info("--------------------------------------등록에러..");
        }

    }}
