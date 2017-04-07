package com.winstar.mes.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/30.
 */
@Controller
@RequestMapping(name = "childHtml",value="/childHtml")
public class QMSController {

    @RequestMapping(name = "programlist_1",value="/programlist_1")
    public String shebeirizhi_5(){
        return "childHtml/programlist_1";
    }

    @RequestMapping(name = "programlist_copy",value="/programlist_copy")
    public String programlist_copy(){
        return "childHtml/programlist_copy";
    }
}
