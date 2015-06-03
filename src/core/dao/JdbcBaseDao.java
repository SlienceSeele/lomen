package core.dao;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import javax.annotation.Resource;
import javax.sql.DataSource;

/**
 * @author 杨添
 * @框架唯一的升级和技术支持地址：http://shop111863449.taobao.com
 */
public class JdbcBaseDao extends JdbcDaoSupport {

    @Resource(name = "dataSource")
    public void setDS(DataSource dataSource) {
        setDataSource(dataSource);
    }

}
