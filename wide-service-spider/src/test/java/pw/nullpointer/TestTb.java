package pw.nullpointer;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pw.nullpointer.pojo.User;
import pw.nullpointer.service.TestService;

import java.util.Date;

/**
 * Created by Mosiki on 2016/12/25.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:application-context.xml"})
public class TestTb {

    //测试Spring与Mybatis整合
    @Autowired
    private TestService testService;

    @Test
    public void testNBame() {
        User mtest = new User();
        mtest.setName("啥子112");
        mtest.setBirthday(new Date());
        testService.insertProject(mtest);
    }

}
