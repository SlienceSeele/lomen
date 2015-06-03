package com.jeefw.test;

import com.jeefw.model.sys.Authority;
import com.jeefw.service.sys.AuthorityService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml", "classpath:spring-security.xml"})
public class SpringSecurityTest {

    @Resource
    private AuthorityService roleAuthorityService;

    @Test
    public void testAuthority() {
        List<Authority> authorityList = roleAuthorityService.doQueryAll();
        List<Authority> resultList = roleAuthorityService.queryAllMenuList("ROLE_ADMIN", authorityList);
        System.out.println(resultList);
    }

}
