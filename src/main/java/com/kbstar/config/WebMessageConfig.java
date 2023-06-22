package com.kbstar.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.AcceptHeaderLocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

@Slf4j
@Configuration
public class WebMessageConfig {

    @Bean
    public ResourceBundleMessageSource messageSource() {
        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
        messageSource.setBasenames("messages/message");
        messageSource.setDefaultEncoding("UTF-8");
        return messageSource;
    }




    @RestController
    public class LocaleController {

        private final LocaleResolver localeResolver;

        public LocaleController(LocaleResolver localeResolver) {
            this.localeResolver = localeResolver;
        }

        @GetMapping("/change-language")
        public String changeLanguage(@RequestParam("lang") String language,
                                     HttpServletRequest request,
                                     HttpServletResponse response) {
            log.info(language);
            Locale locale = Locale.forLanguageTag(language);
            localeResolver.setLocale(request, response, locale);
            return "Language changed to " + language;
        }
    }

}

