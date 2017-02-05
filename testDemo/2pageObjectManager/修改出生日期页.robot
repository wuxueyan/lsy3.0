*** Settings ***
Resource          ../3keywordManager/修改出生日期.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../conf.txt
Resource          ../3keywordManager/个人中心.robot
Resource          ../3keywordManager/个人信息.robot

*** Keywords ***
修改出生日期
    [Arguments]    ${birthday}=
    输入生日    ${birthday}
    等待关键字成功    点击保存

跳转到修改出生日期页
    成功登录
    等待关键字成功    点击头像
    等待关键字成功    点击出生日期

校验修改出生日期结果
    [Arguments]    ${expect}=
    run keyword if    '${expect}'=='pass'    提示语成功更新资料
