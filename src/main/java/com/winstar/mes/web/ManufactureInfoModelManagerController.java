package com.winstar.mes.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/30.
 */
@Controller
@RequestMapping(name = "childHtml",value="/childHtml")
public class ManufactureInfoModelManagerController {

    @RequestMapping(name = "gongzuozhongxin_8",value="/gongzuozhongxin_8")
    public String gongzuozhongxin_8(){
        return "childHtml/gongzuozhongxin_8";
    }

    @RequestMapping(name = "cangchu_copy",value="/cangchu_copy")
    public String cangchu_copy(){
        return "childHtml/cangchu_copy";
    }
}
