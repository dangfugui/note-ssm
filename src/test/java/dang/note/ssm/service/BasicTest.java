package dang.note.ssm.service;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

/**
 * Created by dangqihe on 2016/10/9.
 */
@ContextConfiguration(locations= {"classpath:spring-mvc.xml","classpath:spring-mybatis.xml"})
public class BasicTest extends AbstractTransactionalJUnit4SpringContextTests {

}

