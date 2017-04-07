package com.winstar.mes.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/30.
 */
@Controller
@RequestMapping(name = "childHtml",value="/childHtml")
public class ManufactureInfoManagerController {

    @RequestMapping(name = "bomxinxi_4",value="/bomxinxi_4")
    public String cangchuxinxi_1(){
        return "childHtml/bomxinxi_4";
    }

    @RequestMapping(name = "bom_copy",value="/bom_copy")
    public String bom_copy(){
        return "childHtml/bom_copy";
    }
}
