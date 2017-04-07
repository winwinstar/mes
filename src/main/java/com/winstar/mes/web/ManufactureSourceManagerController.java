package com.winstar.mes.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/30.
 */
@Controller
@RequestMapping(name = "childHtml",value="/childHtml")
public class ManufactureSourceManagerController {

    @RequestMapping(name = "shebeirizhi_5",value="/shebeirizhi_5")
    public String shebeirizhi_5(){
        return "childHtml/shebeirizhi_5";
    }
}
