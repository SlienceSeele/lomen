package core.service;

import core.dao.JdbcBaseDao;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @author 杨添
 * @框架唯一的升级和技术支持地址：http://shop111863449.taobao.com
 */
@Transactional
public class JdbcBaseService {

    @Resource
    protected JdbcBaseDao jdbcBaseDao;

}
