package com.Review;

import java.sql.Date;

public class R_MovieInfoDTO {

    private int num;
    private String title;
    private String actor;
    private String category;
    private String runningtime;
    private Date releasedate;
    private String summary;
    private int visitcount;
    private String director;
    private String production;

    public String getMovieNum() {
        return movieNum;
    }

    public void setMovieNum(String movieNum) {
        this.movieNum = movieNum;
    }

    public String getRbTitle() {
        return rbTitle;
    }

    public void setRbTitle(String rbTitle) {
        this.rbTitle = rbTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String movieNum;
    private String rbTitle;
    private String content;
    private String id;

    private String img;
    private String youtube;
    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getRunningtime() {
        return runningtime;
    }

    public void setRunningtime(String runningtime) {
        this.runningtime = runningtime;
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public int getVisitcount() {
        return visitcount;
    }

    public void setVisitcount(int visitcount) {
        this.visitcount = visitcount;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getYoutube() {
        return youtube;
    }

    public void setYoutube(String youtube) {
        this.youtube = youtube;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getProduction() {
        return production;
    }

    public void setProduction(String production) {
        this.production = production;
    }



}
