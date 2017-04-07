package com.winstar.mes.utils;

import com.winstar.mes.utils.annotation.Column;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/31.
 */
public class SqlProvider {

    @Resource
    private SqlSessionFactory sqlSessionFactory;

    private String getTableName(Object object){
        return object.getClass().getSimpleName();
    }

    private String getTableFields(Object object){

        String tableName = getTableName(object);
        StringBuilder filedSql = new StringBuilder();
        StringBuilder valueSql = new StringBuilder();

        Field[] fields = object.getClass().getDeclaredFields();
        for(Field field:fields){
            if(!field.isAnnotationPresent(Column.class)){
                continue;
            }
            Column c = field.getAnnotation(Column.class);
            String columnName = c.name();

            if("".equals(columnName.trim())){
                columnName = field.getName();
            }
            filedSql.append(columnName+",");
            valueSql.append(columnName+"=#{"+tableName+"."+columnName+"} and ");
        }

        String valueSql1 = valueSql.substring(0,valueSql.lastIndexOf("}")+1);

        filedSql.deleteCharAt(filedSql.length()-1);

        String sql = "select "+filedSql.toString()+" from "+tableName+" where "+valueSql1.toString();

        return sql;
    }

    public String selectAll(Object bean){
        if(bean == null) return null;
        return "SELECT *  FROM "+getTableName(bean);
    }

    public Map<Object,Object> selectList(Object bean){
        if(bean == null) return null;

        Map<Object,Object> map = new HashMap<Object,Object>();
        String sql = getTableFields(bean);
        map.put("sql",sql);
        map.put(getTableName(bean),bean);

        return map;
    }

}
