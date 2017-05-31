package pw.nullpointer.web.controller.manage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by WeJan on 2017/5/30.
 */
@Controller
public class IndexController {

/*    @Autowired
    private TestService testService;*/

    @RequestMapping(value = "/home")
    public String home() {
        return "/manage/index";
    }

    /*@RequestMapping(value = "/test")
    public String tests() {
        User mtest = new User();
        mtest.setName("啥子112");
        mtest.setBirthday(new Date());
        testService.insertProject(mtest);
        return "/manage/list";
    }*/

}
