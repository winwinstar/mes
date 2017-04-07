package com.winstar.mes.bean;

import com.winstar.mes.utils.annotation.Column;

import java.util.Date;

/**
 * Created by Administrator on 2017/3/31.
 */
public class RVC_Auto_Assembly {

    @Column
    private int id;

    @Column
    private String sn;

    @Column
    private Date production_date;

    @Column
    private String status;

    @Override
    public String toString() {
        return "RVC_Auto_Assembly{" +
                "id=" + id +
                ", sn='" + sn + '\'' +
                ", production_date=" + production_date +
                ", status='" + status + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public Date getProduction_date() {
        return production_date;
    }

    public void setProduction_date(Date production_date) {
        this.production_date = production_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
