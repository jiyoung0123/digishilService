package com.kbstar.util;

import com.google.gson.Gson;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.List;

@Slf4j
public class WebCrawler {
    private String url;

    public WebCrawler(String loc) {
        this.url = "https://search.daum.net/search?nil_suggest=btn&w=tot&DA=SBC&q=" + loc + "+주간날씨";
    }

    public Object crawlWeather() {
        try {
            // 웹 페이지를 가져옵니다.
            Document doc = Jsoup.connect(url).get();

            // 원하는 데이터를 추출합니다.
            Elements summaries = doc.select("div.cont_weather tbody:nth-of-type(1)");
            Elements secondTr = summaries.select("tr:nth-of-type(2)");
            Elements td = secondTr.select("td");
            //직렬화
            List<String> summaryList = new ArrayList<>();

            for(Element summary : td){
                String summaryText = summary.select("td").text();
                summaryList.add(summaryText);
            }

            // 직렬화 하기 전
//            for (Element summary : summaries) {
//                String summaryText = summary.select("p").text();
//            }

            // 데이터를 JSON 형식으로 변환하여 반환합니다.
            Gson gson = new Gson();
            return gson.toJson(summaryList);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
