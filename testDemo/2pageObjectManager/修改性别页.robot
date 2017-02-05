*** Settings ***
Resource          ../3keywordManager/修改性别.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../conf.txt
Resource          ../3keywordManager/个人信息.robot

*** Keywords ***
修改性别
    [Arguments]    ${value}
    run keyword if    ${value}==0    选择女
    run keyword if    ${value}==1    选择男
    等待关键字成功    点击保存

校验修改性别结果
    [Arguments]    ${expect}
    run keyword if    '${expect}'=='成功更新资料'    提示语成功更新资料

跳转到修改性别页
    等待关键字成功    成功登录
    等待关键字成功    点击头像
    等待关键字成功    点击性别
