package com.winstar.mes.service;

import com.winstar.mes.bean.BDOperationAccount;

/**
 * Created by Administrator on 2017/3/30.
 */
public interface LoginService {
    BDOperationAccount getUserInfo(String OperationID);
}
