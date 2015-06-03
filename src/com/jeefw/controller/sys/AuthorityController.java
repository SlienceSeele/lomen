package com.jeefw.controller.sys;

import java.io.IOException;
import java.io.OutputStream;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jeefw.core.Constant;
import com.jeefw.core.JavaEEFrameworkBaseController;
import com.jeefw.model.sys.Authority;
import com.jeefw.model.sys.RoleAuthority;
import com.jeefw.service.sys.AuthorityService;
import com.jeefw.service.sys.RoleAuthorityService;

import core.support.ExtJSBaseParameter;
import core.support.JqGridPageView;
import core.support.QueryResult;

/**
 * @author 杨添
 */
@Controller
@RequestMapping("/sys/authority")
public class AuthorityController extends JavaEEFrameworkBaseController<Authority> implements Constant {

	@Resource
	private AuthorityService authorityService;
	@Resource
	private RoleAuthorityService roleAuthorityService;

	@RequestMapping(value = "/getAuthority", method = { RequestMethod.POST, RequestMethod.GET })
	public void getAuthority(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Integer firstResult = Integer.valueOf(request.getParameter("page"));
		Integer maxResults = Integer.valueOf(request.getParameter("rows"));
		String sortedObject = request.getParameter("sidx");
		String sortedValue = request.getParameter("sord");
		String filters = request.getParameter("filters");
		Authority authority = new Authority();
		if (StringUtils.isNotBlank(filters)) {
			JSONObject jsonObject = JSONObject.fromObject(filters);
			JSONArray jsonArray = (JSONArray) jsonObject.get("rules");
			for (Object aJsonArray : jsonArray) {
				JSONObject result = (JSONObject) aJsonArray;
				if (result.getString("field").equals("menuCode") && result.getString("op").equals("eq")) {
					authority.set$eq_menuCode(result.getString("data"));
				}
				if (result.getString("field").equals("menuName") && result.getString("op").equals("cn")) {
					authority.set$like_menuName(result.getString("data"));
				}
			}
			if (((String) jsonObject.get("groupOp")).equalsIgnoreCase("OR")) {
				authority.setFlag("OR");
			} else {
				authority.setFlag("AND");
			}
		}
		authority.setFirstResult((firstResult - 1) * maxResults);
		authority.setMaxResults(maxResults);
		Map<String, String> sortedCondition = new HashMap<String, String>();
		sortedCondition.put(sortedObject, sortedValue);
		authority.setSortedConditions(sortedCondition);
		QueryResult<Authority> queryResult = authorityService.doPaginationQuery(authority);
		JqGridPageView<Authority> authorityListView = new JqGridPageView<Authority>();
		authorityListView.setMaxResults(maxResults);
		authorityListView.setRows(queryResult.getResultList());
		authorityListView.setRecords(queryResult.getTotalCount());
		writeJSON(response, authorityListView);
	}

	@Override
	@RequestMapping(value = "/saveAuthority", method = { RequestMethod.POST, RequestMethod.GET })
	public void doSave(Authority entity, HttpServletRequest request, HttpServletResponse response) throws IOException {
		ExtJSBaseParameter parameter = ((ExtJSBaseParameter) entity);
		if (CMD_EDIT.equals(parameter.getCmd())) {
			authorityService.update(entity);
		} else if (CMD_NEW.equals(parameter.getCmd())) {
			authorityService.persist(entity);
		}
		parameter.setSuccess(true);
		writeJSON(response, parameter);
	}

	@RequestMapping(value = "/operateAuthority", method = { RequestMethod.POST, RequestMethod.GET })
	public void operateAuthority(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String oper = request.getParameter("oper");
		String id = request.getParameter("id");
		switch (oper) {
			case "del":
				String[] ids = id.split(",");
				deleteAuthority(request, response, (Long[]) ConvertUtils.convert(ids, Long.class));
				break;
			case "excel":
				response.setContentType("application/msexcel;charset=UTF-8");
				try {
					response.addHeader("Content-Disposition", "attachment;filename=file.xls");
					OutputStream out = response.getOutputStream();
					out.write(request.getParameter("csvBuffer").getBytes());
					out.flush();
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
			default:
				Map<String, Object> result = new HashMap<String, Object>();
				String menuCode = request.getParameter("menuCode");
				String menuName = request.getParameter("menuName");
				String menuClass = request.getParameter("menuClass");
				String dataUrl = request.getParameter("dataUrl");
				String sequence = request.getParameter("sequence");
				String parentMenuCode = request.getParameter("parentMenuCode");
				if (StringUtils.isBlank(parentMenuCode)) {
					parentMenuCode = "0";
				}
				Authority authority = null;
				if (oper.equals("edit")) {
					authority = authorityService.get(Long.valueOf(id));
				}
				Authority menuCodeAuthority = authorityService.getByProerties("menuCode", menuCode);
				Authority parentMenuCodeAuthority = authorityService.getByProerties("menuCode", parentMenuCode);
				if (StringUtils.isBlank(menuCode) || StringUtils.isBlank(menuName) || StringUtils.isBlank(menuClass) || StringUtils.isBlank(dataUrl)) {
					response.setStatus(HttpServletResponse.SC_LENGTH_REQUIRED);
					result.put("message", "请填写菜单编码、菜单名称、菜单class属性值和菜单data-url属性值");
					writeJSON(response, result);
				} else if (null != menuCodeAuthority && oper.equals("add")) {
					response.setStatus(HttpServletResponse.SC_CONFLICT);
					result.put("message", "此菜单编码已存在，请重新输入");
					writeJSON(response, result);
				} else {
					assert authority != null;
					if (null != menuCodeAuthority && !authority.getMenuCode().equalsIgnoreCase(menuCode) && oper.equals("edit")) {
                        response.setStatus(HttpServletResponse.SC_CONFLICT);
                        result.put("message", "此菜单编码已存在，请重新输入");
                        writeJSON(response, result);
                    } else if (!parentMenuCode.equals("0") && null == parentMenuCodeAuthority) {
                        response.setStatus(HttpServletResponse.SC_CONFLICT);
                        result.put("message", "上级菜单编码输入有误，请重新输入");
                        writeJSON(response, result);
                    } else {
                        Authority entity = new Authority();
                        entity.setMenuCode(menuCode);
                        entity.setMenuName(menuName);
                        entity.setMenuClass(menuClass);
                        entity.setDataUrl(dataUrl);
                        entity.setSequence(Objects.equals(sequence, "") ? null : Long.valueOf(sequence));
                        entity.setParentMenuCode(parentMenuCode);
                        if (oper.equals("edit")) {
                            entity.setId(Long.valueOf(id));
                            entity.setCmd("edit");
                            doSave(entity, request, response);
                        } else if (oper.equals("add")) {
                            entity.setCmd("new");
                            doSave(entity, request, response);
                        }
                    }
				}
				break;
		}
	}

	@RequestMapping("/deleteAuthority")
	public void deleteAuthority(HttpServletRequest request, HttpServletResponse response, @RequestParam("ids") Long[] ids) throws IOException {
		boolean flag = authorityService.deleteByPK(ids);
		if (flag) {
			writeJSON(response, "{success:true}");
		} else {
			writeJSON(response, "{success:false}");
		}
	}

	@RequestMapping("/getAuthorityTreeList")
	public void getAuthorityTreeList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String roleKey = request.getParameter("roleKey");
		if (id.equals("0")) {
			List<Authority> mainMenuList = authorityService.queryByProerties("parentMenuCode", "0");
			JSONObject allJSONObject = new JSONObject();
			JSONArray jsonArray = new JSONArray();
			for (Authority aMainMenuList : mainMenuList) {
				JSONObject mainJsonObject = new JSONObject();
				mainJsonObject.element("id", aMainMenuList.getMenuCode());
				mainJsonObject.element("name", aMainMenuList.getMenuName());
				mainJsonObject.element("type", "folder");
				mainJsonObject.element("children", true);
				mainJsonObject.element("additionalParameters", mainJsonObject);
				jsonArray.add(mainJsonObject);
			}
			allJSONObject.element("status", "OK");
			allJSONObject.element("data", jsonArray);
			writeJSON(response, allJSONObject);
		} else {
			List<RoleAuthority> roleAuthorityList = roleAuthorityService.queryByProerties("roleKey", roleKey);
			List<String> menuCodeList = new ArrayList<String>();
			for (RoleAuthority aRoleAuthorityList : roleAuthorityList) {
				menuCodeList.add(aRoleAuthorityList.getMenuCode());
			}
			Authority authority = authorityService.getByProerties("menuCode", id);
			List<Authority> subMenuList = authorityService.queryByProerties("parentMenuCode", authority.getMenuCode());
			JSONObject allJSONObject = new JSONObject();
			JSONArray jsonArray = new JSONArray();
			for (Authority aSubMenuList : subMenuList) {
				JSONObject subJsonObject = new JSONObject();
				subJsonObject.element("id", aSubMenuList.getMenuCode());
				subJsonObject.element("name", aSubMenuList.getMenuName());
				subJsonObject.element("type", "item");
				if (menuCodeList.contains(aSubMenuList.getMenuCode())) {
					subJsonObject.element("item-selected", true);
				} else {
					subJsonObject.element("item-selected", false);
				}
				subJsonObject.element("additionalParameters", subJsonObject);
				jsonArray.add(subJsonObject);
			}
			allJSONObject.element("status", "OK");
			allJSONObject.element("data", jsonArray);
			writeJSON(response, allJSONObject);
		}
	}
}
