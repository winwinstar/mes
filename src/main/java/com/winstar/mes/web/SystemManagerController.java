package com.winstar.mes.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/30.
 */
@Controller

public class SystemManagerController {

    @RequestMapping(name = "loginout",value="/loginOut")
    public String loginout(){
        return "index";
    }
}
