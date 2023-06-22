//package com.kbstar.config;
//
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.server.ServerWebExchange;
//import org.springframework.web.servlet.LocaleResolver;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.util.Locale;
//@Slf4j
//@RestController
//public class LocaleController {
//
//    private final LocaleResolver localeResolver;
//    private final MessageByLocale messageByLocale;
//
//    public LocaleController(LocaleResolver localeResolver, MessageByLocale messageByLocale) {
//        this.localeResolver = localeResolver;
//        this.messageByLocale = messageByLocale;
//    }
//
//    @RequestMapping("/change-language")
//    public void changeLanguage(@RequestParam("lang") String language,
//                               HttpServletRequest request,
//                               HttpServletResponse response) {
//        Locale locale = Locale.forLanguageTag(language);
//        localeResolver.setLocale(request, response, locale);
//
//        // Create ServerWebExchange using HttpServletRequest and HttpServletResponse
//        // ServerWebExchange exchange = ServerWebExchangeUtils.toExchange(request, response);
//
//        // Use the HttpServletRequest and HttpServletResponse objects as needed
//        // Example: Get request parameters or headers
//        // String paramValue = request.getParameter("paramName");
//        // String headerValue = request.getHeader("headerName");
//
//        // Use the HttpServletResponse object to perform additional actions or update the UI
//        String message = messageByLocale.getMessage("language.changed", request, response);
//        log.info(message);
//        // Perform additional actions or update the UI as needed
//    }
//}