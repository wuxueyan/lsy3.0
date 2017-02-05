*** Settings ***
Resource          ../3keywordManager/会员登录.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../3keywordManager/首页.robot
Resource          ../3keywordManager/个人中心.robot

*** Keywords ***
登录
    [Arguments]    ${mobile}=    ${password}=
    wait until keyword succeeds    10s    1s    输入手机号    ${mobile}
    wait until keyword succeeds    10s    1s    输入密码    ${password}
    等待关键字成功    点击登录

校验登录结果
    [Arguments]    ${expect}=
    [Documentation]    检查登录：此处用的方法为：点击登录之后页面会出现相应的提示语
    ...    还有一种方法：检查：COOKIE值中是否包含TOKENID，如果有代表登录成功
    run keyword if    '${expect}'=='手机号码和密码不能为空'    提示语手机号码和密码不能为空
    ...    ELSE IF    '${expect}'=='手机号码不能为空'    提示语手机号码不能为空
    ...    ELSE IF    '${expect}'=='密码不能为空'    提示语密码不能为空
    ...    ELSE IF    '${expect}'=='该账号不存在'    提示语该账号不存在
    ...    ELSE IF    '${expect}'=='登录账号或密码不正确'    提示语登录账号或密码不正确
    ...    ELSE IF    '${expect}'=='pass'    校验成功登录

校验成功登录
    等待关键字成功    提示语成功登录

跳转到登录页
    打开网址
    等待关键字成功    点击我的
    等待关键字成功    点击头像
