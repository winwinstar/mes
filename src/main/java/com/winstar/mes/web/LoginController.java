package com.winstar.mes.web;

import com.winstar.mes.bean.BDOperationAccount;
import com.winstar.mes.service.LoginService;
import com.winstar.mes.utils.DesCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/3/14.
 */
@Controller
public class LoginController {

    @Autowired
    private BDOperationAccount user;

    @Autowired
    private LoginService loginService;

    @RequestMapping(value ="/login",method = RequestMethod.POST)
    public String login(BDOperationAccount bdOperationAccount, HttpSession session) throws Exception {

        user = loginService.getUserInfo(bdOperationAccount.getOperationID());
        DesCode desCode = new DesCode();

        if(bdOperationAccount.getPassWord()!=null && user!=null && user.getPassWord().equals(desCode.encode(bdOperationAccount.getPassWord()))){
            session.setAttribute("user",bdOperationAccount.getOperationID());
            session.setMaxInactiveInterval(300);
            return "main";
        }
        return "index";
    }

    @RequestMapping(value ="/first",method = RequestMethod.GET)
    public String first(Model model,HttpSession session){
        model.addAttribute("userID",session.getAttribute("user"));
        return "childHtml/first";
    }
}
