package com.jeefw.service.sys.impl;

import com.jeefw.dao.sys.AttachmentDao;
import com.jeefw.dao.sys.DepartmentDao;
import com.jeefw.dao.sys.SysUserDao;
import com.jeefw.model.sys.Attachment;
import com.jeefw.model.sys.Department;
import com.jeefw.model.sys.SysUser;
import com.jeefw.service.sys.SysUserService;
import core.service.BaseService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
public class SysUserServiceImpl extends BaseService<SysUser> implements SysUserService {

	//private SysUserDao sysUserDao;
	@Resource
	private AttachmentDao attachmentDao;
	@Resource
	private DepartmentDao departmentDao;

	@Resource
	public void setSysUserDao(SysUserDao sysUserDao) {
	//	this.sysUserDao = sysUserDao;
		this.dao = sysUserDao;
	}

	@Override
	public List<SysUser> querySysUserCnList(List<SysUser> resultList) {
		List<SysUser> sysUserList = new ArrayList<>();
		for (SysUser entity : resultList) {
			SysUser sysUser = new SysUser();
			sysUser.setId(entity.getId());
			sysUser.setUserName(entity.getUserName());
			sysUser.setSex(entity.getSex());
			if (entity.getSex() == 1) {
				sysUser.setSexCn("男");
			} else if (entity.getSex() == 2) {
				sysUser.setSexCn("女");
			}
			sysUser.setEmail(entity.getEmail());
			sysUser.setPhone(entity.getPhone());
			sysUser.setBirthday(entity.getBirthday());
			sysUser.setDepartmentKey(entity.getDepartmentKey());
			if (StringUtils.isNotBlank(sysUser.getDepartmentKey())) {
				Department department = departmentDao.getByProerties("departmentKey", sysUser.getDepartmentKey());
				sysUser.setDepartmentValue(department.getDepartmentValue());
			}
			sysUser.setPassword(entity.getPassword());
			sysUser.setRole(entity.getRole());
			switch (entity.getRole()) {
				case "ROLE_ADMIN":
					sysUser.setRoleCn("超级管理员");
					break;
				case "ROLE_RESTRICTED_ADMIN":
					sysUser.setRoleCn("普通管理员");
					break;
				case "ROLE_USER":
					sysUser.setRoleCn("导师");
					break;
			}
			if (entity.getStatus()) {
				sysUser.setStatusCn("是");
			} else {
				sysUser.setStatusCn("否");
			}
			sysUser.setLastLoginTime(entity.getLastLoginTime());
			sysUserList.add(sysUser);
		}
		return sysUserList;
	}

	@Override
	public SysUser getSysUserWithAvatar(SysUser sysuser) {
		SysUser entity = new SysUser();
		entity.setId(sysuser.getId());
		entity.setUserName(sysuser.getUserName());
		entity.setSex(sysuser.getSex());
		entity.setEmail(sysuser.getEmail());
		entity.setPhone(sysuser.getPhone());
		entity.setBirthday(sysuser.getBirthday());
		entity.setPassword(sysuser.getPassword());
		entity.setRole(sysuser.getRole());
		entity.setStatus(sysuser.getStatus());
		entity.setLastLoginTime(sysuser.getLastLoginTime());
		Attachment attachment = attachmentDao.getByProerties(new String[] { "type", "typeId" }, new Object[] { (short) 1, sysuser.getId() });
		if (null != attachment) {
			entity.setFilePath(attachment.getFilePath());
		} else {
			entity.setFilePath("/static/assets/avatars/profile-pic.jpg");
		}
		return entity;
	}
}
