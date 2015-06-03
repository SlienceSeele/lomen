package com.jeefw.controller.lm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/front")
public class PageController {
    @RequestMapping("/index")
    public String index() {

        return "front/index";
    }
    @RequestMapping("/LineActivity")
    public String lineActivity() {

        return "front/LineActivity";
    }
    @RequestMapping("/NoviceGuide")
    public String noviceGuide() {

        return "front/NoviceGuide";
    }
    @RequestMapping("/OnlineConsultation")
    public String onlineConsultation() {

        return "front/OnlineConsultation";
    }
    @RequestMapping("/PolicyRelated")
    public String policyRelated() {

        return "front/PolicyRelated";
    }    @RequestMapping("/PersonalEvaluation")
         public String personalEvaluation() {

        return "front/PersonalEvaluation";
    }

}
