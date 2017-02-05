*** Settings ***
Resource          ../3keywordManager/修改密码.robot
Resource          ../conf.txt
Resource          ../3keywordManager/账户设置.robot
Resource          ../3keywordManager/个人中心.robot

*** Keywords ***
跳转到修改支付密码页
    成功登录
    等待关键字成功    点击账户设置
    等待关键字成功    点击修改支付密码

校验修改支付密码结果
    [Arguments]    ${expect}=
    run keyword if    '${expect}'=='修改成功'    提示语添加成功
