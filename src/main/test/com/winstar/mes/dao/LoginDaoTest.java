package com.winstar.mes.dao;

import com.winstar.mes.bean.BDOperationAccount;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by Administrator on 2017/3/30.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class LoginDaoTest {

    @Resource
    private LoginDao loginDao;

    @Test
    public void queryUsers() throws Exception {
        BDOperationAccount list = loginDao.queryUserById("001");
        System.out.println(list);
    }

}