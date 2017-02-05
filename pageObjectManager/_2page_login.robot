*** Settings ***
Resource          _3element_dengluye.txt

*** Keywords ***
登录
    [Arguments]    ${mobile}    ${password}
    输入手机号    ${mobile}
    输入密码    ${password}
    点击登录

校验登录结果
    [Arguments]    ${expect}
    [Documentation]    检查登录：此处用的方法为：点击登录之后页面会出现相应的提示语
    ...    还有一种方法：检查：COOKIE值中是否包含TOKENID，如果有代表登录成功
    run keyword if    ${expect}=='手机号码和密码不能为空'    page should contain    手机号码不能为空    密码不能为空
    ...    ELSE IF    ${expect}=='手机号码不能为空'    page should contain    手机号码不能为空
    ...    ELSE IF    ${expect}=='密码不能为空'    page should contain    密码不能为空
    ...    ELSE IF    ${expect}=='手机号码错误'    page should contain    手机号码错误
    ...    ELSE IF    ${expect}=='该账号不存在'    page should contain    该账号不存在
    ...    ELSE IF    ${expect}=='pass'    page should contain    成功登录
