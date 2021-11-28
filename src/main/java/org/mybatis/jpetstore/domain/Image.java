package org.mybatis.jpetstore.domain;

import java.io.Serializable;

public class Image implements Serializable {
    private static final long serialVersionUID = -2254024898221315127L;
    private int fid;
    private int sid;
    private String dir;

    public int getFid() { return fid; }

    public void setFid(int fid) { this.fid = fid; }

    public int getSid() { return sid; }

    public void setSid(int sid) { this.sid = sid; }

    public String getDir() { return dir; }

    public void setDir(String dir) { this.dir = dir; }
}