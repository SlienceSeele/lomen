package com.jeefw.test;

import com.jeefw.dao.sys.SysUserDao;
import com.jeefw.model.sys.SysUser;
import com.jeefw.service.sys.SysUserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring.xml"})
public class SSHTest {

    @Resource
    private SysUserDao sysUserDao;

    @Resource
    private SysUserService sysUserService;

    @Before
    public void setUp() throws Exception {

    }

    @Test
    public final void testSave() {
        // System.out.println("sysUserService:::" + sysUserService);
        SysUser sysUser = sysUserService.getByProerties("userName", "admin");
    }

}
