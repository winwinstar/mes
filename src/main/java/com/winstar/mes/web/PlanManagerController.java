package com.winstar.mes.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/30.
 */
@Controller
@RequestMapping(name = "childHtml",value="/childHtml")
public class PlanManagerController {
    @RequestMapping(name = "gongdanguanli_1",value="/gongdanguanli_1")
    public String gongdanguanli_1(){
        return "childHtml/gongdanguanli_1";
    }
}
