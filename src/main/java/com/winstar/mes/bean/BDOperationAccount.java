package com.winstar.mes.bean;

import org.springframework.stereotype.Component;

import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/3/30.
 */
@Component
public class BDOperationAccount {
    private String id;
    private String OperationID;
    private String PassWord;
    private String IsEnable;
    private Timestamp ActionDatetime;

    public BDOperationAccount(String operationID, String passWord) {
        this.OperationID = operationID;
        this.PassWord = passWord;
    }

    public BDOperationAccount() {
    }

    @Override
    public String toString() {
        return "BDOperationAccount{" +
                "ID=" + id +
                ", OperationID='" + OperationID + '\'' +
                ", PassWord='" + PassWord + '\'' +
                ", IsEnable=" + IsEnable +
                ", ActionDatetime=" + ActionDatetime +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOperationID() {
        return OperationID;
    }

    public void setOperationID(String operationID) {
        OperationID = operationID;
    }

    public String getPassWord() {
        return PassWord;
    }

    public void setPassWord(String passWord) {
        PassWord = passWord;
    }

    public String getIsEnable() {
        return IsEnable;
    }

    public void setIsEnable(String isEnable) {
        IsEnable = isEnable;
    }

    public Timestamp getActionDatetime() {
        return ActionDatetime;
    }

    public void setActionDatetime(Timestamp actionDatetime) {
        ActionDatetime = actionDatetime;
    }
}
