package com.winstar.mes.dao;

import com.winstar.mes.bean.RVC_Auto_Assembly;
import com.winstar.mes.utils.SqlProvider;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/14.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class TestDaoTest {

    @Resource
    private SqlSessionFactory sqlSessionFactory;

    @Resource
    private LoginDao testDao;

    @Test
    public void insert() throws Exception {

        RVC_Auto_Assembly RVCAutoAssembly = new RVC_Auto_Assembly();
        RVCAutoAssembly.setProduction_date(new Date());
        Map<Object,Object> map = new HashMap<Object, Object>();
        //动态sql通过反射来获取字段名，可解决问题

        String sql = "insert into RVC_Auto_Assembly (sn,production_date,status) " +
                "values (#{buildMenu.sn},#{buildMenu.production_date},#{buildMenu.status})";
        map.put("sql",sql);
        map.put("buildMenu", RVCAutoAssembly);

        int map1 = testDao.insert(map);
        System.out.println("返回数据：“"+map1);

    }

    @Test
    public void queryAll() throws Exception {

        SqlSession session = sqlSessionFactory.openSession();

//        Map<Object,Object> map = new HashMap<Object, Object>();
//        RVC_Auto_Assembly rvc_auto_assembly = new RVC_Auto_Assembly();
//        rvc_auto_assembly.setId(1);
//
//        String sql = "select id,sn,production_date,status from RVC_Auto_Assembly where id=#{rvc_auto_assembly.id}";
//        map.put("sql",sql);
//        map.put("rvc_auto_assembly",rvc_auto_assembly);
//
//        List<HashMap<Object,Object>> map1 = session.selectList("com.winstar.mes.dao.LoginDao.select",map);
//        System.out.println(map1);


        RVC_Auto_Assembly rvc_auto_assembly = new RVC_Auto_Assembly();
        rvc_auto_assembly.setId(1);

        SqlProvider sqlProvider = new SqlProvider();

        Map<Object,Object> map = sqlProvider.selectList(rvc_auto_assembly);

        List<Map<Object,Object>> mapList = session.selectList("com.winstar.mes.dao.LoginDao.select",map);

        System.out.println(mapList);
    }

}