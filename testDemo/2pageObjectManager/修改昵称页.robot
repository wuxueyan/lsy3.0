*** Settings ***
Resource          ../3keywordManager/修改昵称.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../3keywordManager/个人信息.robot
Resource          ../3keywordManager/个人中心.robot
Resource          ../conf.txt

*** Keywords ***
修改昵称
    [Arguments]    ${nickname}=
    wait until keyword succeeds    30s    1s    输入昵称    ${nickname}
    等待关键字成功    点击保存

校验修改昵称结果
    [Arguments]    ${expect}
    [Documentation]    判断修改昵称是否成功
    run keyword if    '${expect}'=='请填写昵称'    提示语填写昵称
    ...    ELSE IF    '${expect}'=='昵称最多只能输入20个字'    提示语昵称最多只能输入20个字
    ...    ELSE IF    '${expect}'=='输入字符限制'    提示语字符限制
    ...    ELSE IF    '${expect}'=='pass'    提示语成功更新资料

跳转到修改昵称页
    等待关键字成功    成功登录
    等待关键字成功    点击头像
    等待关键字成功    点击昵称
