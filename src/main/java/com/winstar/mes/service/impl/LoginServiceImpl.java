package com.winstar.mes.service.impl;

import com.winstar.mes.bean.BDOperationAccount;
import com.winstar.mes.dao.LoginDao;
import com.winstar.mes.service.LoginService;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/3/30.
 */
@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginDao loginDao;

    public BDOperationAccount getUserInfo(String OperationID) {
        return loginDao.queryUserById(OperationID);
    }
}
