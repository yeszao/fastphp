<?php
/**
 * 静态常量
 *
 */

	define('INFO_IS_UNDEFINED', '提示信息未定义');

	/**
	 * 用户登录
	 */
	define('EMAIL_IS_NULL', '邮箱不能为空');
	define('PASSWORD_IS_NULL', '密码不能为空');
    define('PASSWORD_IS_ERROR', '密码错误，请重新输入密码');
   define('USER_IS_NOT_REGISTERED', '用户未注册，请先注册');
	define('USER_IS_NOT_LOGIN', '用户未登录，请前往登录');
	define('USER_IS_ALREADY_LOGIN', '用户已登录，请勿重复登录');
	define('LOGIN_SUCCESS', '登录成功');	// 登录成功
	define('LOGOUT_SUCCESS', '注销成功，请重新登录');


	/**
	 * 用户注册
	 */
	define('REGISTER_SUCCESS', '注册成功，已自动登录');
	define('USER_IS_ALREADY_REGISTERED', '该邮箱已被注册 , 请前往登录或换一个邮箱');
	define('CONFIRMPASSWORD_IS_NULL', '确认密码不能为空，请重新注册');
	define('USERNAME_IS_NULL', '姓名不能为空，请重新注册');
	define('USERGROUP_IS_NULL', '');
	define('DEPTCODE_IS_NULL', '');
	define('FREE_DATE_IS_NULL', '');
	define('SESSION_CODE_IS_NULL', '');
	define('OWNER_ID_IS_NULL', '');
	define('USER_LIST_IS_NULL', '');
	define('STARTTIME_IS_NULL', '');
	define('ENDTIME_IS_NULL', '');
	define('FREETIME_ID_IS_NULL', '');
	define('TWO_PASSWORDS_ARE_NOT_SAME', '两次输入密码不一致，请重新注册');
	define('PASSWORD_CAN_NOT_BE_ENCRYPTED', '');	// 密码无法被加密


	define('', '');

	/**
	 * 日程相关
	 */
	define('BELONG_DATE_IS_NULL', '请先选择日期 o(*￣︶￣*)o');
	define('TAG_ID_IS_NULL', '请先选择标签 o(*￣︶￣*)o');
	define('BLOCK_CODE_ARRAY_IS_NULL', '请先选择时间块 o(*￣︶￣*)o');
	define('TAG_LIST_IS_NULL', '该用户尚未添加标签');
	define('BLOCK_LIST_IS_NULL', '该用户尚未添加时间块');
	define('GET_BLOCK_AND_TAG_SUCCESS', '获取标签和块信息成功');
	define('ADD_ITEM_SUCCESS', '成功添加事项 (*^▽^*)');
	define('ADD_ITEM_FAILED', '添加事项失败');


	/**
	 * 模板
	 */
	define('START_DATE_IS_NULL', '请先选择开始日期 o(*￣︶￣*)o');
	define('END_DATE_IS_NULL', '请先选择结束日期 o(*￣︶￣*)o');
	define('EVENT_LIST_IS_NULL', '事件列表为空 o(*￣︶￣*)o');
	define('TEMPLATE_IS_NULL', '模板为空，请先选择事项o(*￣︶￣*)o');
	define('GET_EVENT_LIST_SUCCESS', '获取事件列表成功 o(*￣︶￣*)o');
	define('ADD_TEMPLATE_SUCCESS', '成功添加模板 (*^▽^*)');
	define('ADD_TEMPLATE_FAILED', '添加模板失败');
	define('APPLY_TEMPLATE_SUCCESS', '应用模板成功 (*^▽^*)');
	define('APPLY_TEMPLATE_FAILED', '应用模板失败');


	// /**
	//  * 用户组
	//  */
	// public static final String USERGROUP_STUDENT = "student";
	// public static final String USERGROUP_TEACHER = "teacher";
	// public static final String USERGROUP_ALU	 = "alu";	// 校友
	// public static final String USERGROUP_ADMIN 	 = "admin";
	// public static final String USER_IS_NOT_PERMITTED_TO_OOPERATE = "user is not permitted to operate";


	// /**
	//  * 用户状态
	//  */
	// public static final String USER_STATE_UNCHECK = "uncheck";
	// public static final String USER_STATE_CHECKED = "checked";


	// /**
	//  * 空闲时间状态
	//  */
	// public static final String FREETIME_STATE_FREE = "free";	// 空闲
	// public static final String FREETIME_STATE_BUSY = "busy";	// 已满
	// public static final String FREETIME_STATE_RESERVED ="reserved";	// 已被预约


	// /**
	//  * 添加空闲时间
	//  */
	// public static final String FREETIME_ADD_SUCCESS = "add freetime success";
	// public static final String FREETIME_IS_NOT_ADDED = "freetime is not added";
	// public static final String FREETIME_IS_ALREADY_ADDED = "time is already added, please add another one";


	// /**
	//  * 院系
	//  */
	// public static final String DEPT_ALL = "00";	// 所有院系
	// public static final String DEPT_CAR = "01";	// 汽车工程学院
	// public static final String DEPT_INFO = "02";	// 信息科学与工程学院
	// public static final String DEPT_MANAGE = "03";	// 管理学院
	// public static final String DEPT_COMPUTER = "04";	// 计算机科学与技术学院
	// public static final String DEPT_FOREGIN = "05";	// 外国语学院
	// public static final String DEPT_MATH = "06";	// 数学系
	// public static final String DEPT_SEA = "07";	// 海洋学院
	// public static final String DEPT_METEA = "08";	// 材料科学与工程学院
	// public static final String DEPT_BOAT = "09";	// 船舶学院
	// public static final String DEPT_LIGHT = "10";	// 光电科学系
	// public static final String DEPT_SOFT = "11";	// 软件学院
	// public static final String DEPT_BUILDING = "12";	// 土木工程系
	// public static final String DEPT_HUMAN = "13";	// 人文学院
	// public static final String DEPT_NEW_ENERGY = "14"; // 新能源？
	// public static final String DEPT_OTHER = "99";	//其他院系部门

	// public static final String USER_RESERVE_NUM_IS_FULL = "user reserved num is full";
