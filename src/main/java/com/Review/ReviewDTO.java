package com.Review;

import jakarta.annotation.Nullable;

import java.sql.Date;

public class ReviewDTO {
    public String getIdx() { return idx; }

    public void setIdx(String idx) {
        this.idx = idx;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPostdate() {
        return postdate;
    }

    public void setPostdate(Date postdate) {
        this.postdate = postdate;
    }

    public int getVisitcount() {
        return visitcount;
    }

    public void setVisitcount(int visitcount) {
        this.visitcount = visitcount;
    }

    // 멤버 변수 선언
    private String idx;
    private String id;
    private String title;
    private String content;
    private java.sql.Date postdate;
    private int visitcount;

}
