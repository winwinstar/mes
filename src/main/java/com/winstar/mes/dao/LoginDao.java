package com.winstar.mes.dao;

import com.winstar.mes.bean.BDOperationAccount;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/14.
 */
public interface LoginDao {

    int insert(Map<Object,Object> query);

    HashMap<Object,Object> select(Map<Object,Object> query);

    BDOperationAccount queryUserById(String OperationID);

}
