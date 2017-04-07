package com.winstar.mes.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/30.
 */
@Controller
@RequestMapping(name = "childHtml",value="/childHtml")
public class FoundationInfoManagerController {

    @RequestMapping(name = "cangchuxinxi_1",value="/cangchuxinxi_1")
    public String cangchuxinxi_1(){
        return "childHtml/cangchuxinxi_1";
    }

    @RequestMapping(name = "yuangong_4",value="/yuangong_4")
    public String yuanyong_4(){
        return "childHtml/yuangong_4";
    }
}
