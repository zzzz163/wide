package pw.nullpointer.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pw.nullpointer.dao.TestDao;
import pw.nullpointer.pojo.User;

import javax.annotation.Resource;

/**
 * Created by Mosiki on 2016/12/26.
 */
@Service("testService")
@Transactional  //事务开启注解
public class TestServiceImpl implements TestService {
    @Resource
    private TestDao testDao;

    public void insertProject(User mtest) {
        testDao.insertProject(mtest);
         throw new RuntimeException();
    }
}
