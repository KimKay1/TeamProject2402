package com.Review;

import java.sql.Date;

public class R_DTO {
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // 멤버 변수 선언
    private String idx;
    private String id;
    private String title;
    private String content;
    private java.sql.Date postdate;
    private int visitcount;
    private String name;

    public String getMovieNum() {
        return movieNum;
    }

    public void setMovieNum(String movieNum) {
        this.movieNum = movieNum;
    }

    private String movieNum;

    public String getOfile() {
        return Ofile;
    }

    public void setOfile(String ofile) {
        Ofile = ofile;
    }

    public String getSfile() {
        return Sfile;
    }

    public void setSfile(String sfile) {
        Sfile = sfile;
    }

    private String Ofile;

    private String Sfile;

    private String category;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String mtTitle;

    public String getMtTitle() {
        return mtTitle;
    }

    public void setMtTitle(String mtTitle) {
        this.mtTitle = mtTitle;
    }

    public String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
