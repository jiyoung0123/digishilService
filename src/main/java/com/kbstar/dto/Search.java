package com.kbstar.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Search {
    private int searchId;
    private String searchWord;
    private int searchCount;

    public Search(String searchWord) {
        this.searchWord = searchWord;
    }
}
