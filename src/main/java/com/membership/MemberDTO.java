package com.membership;

import java.util.Date;

public class MemberDTO {

    private String id;
    private String pass;
    private String name;
    private Date regidate;
    private String usernum;

    public MemberDTO() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getRegidate() {
        return regidate;
    }

    public void setRegidate(Date regidate) {
        this.regidate = regidate;
    }

    public String getUsernum() {
        return usernum;
    }

    public void setUsernum(String usernum) {
        this.usernum = usernum;
    }
}
