*** Settings ***
Resource          ../3keywordManager/订单支付.robot

*** Keywords ***
余额支付
    [Arguments]    ${payPassword}=    ${isClickCancel}=
    等待关键字成功    点击立即付款
    等待关键字成功    输入支付密码    ${payPassword}
    run keyword if    ${isClickCancel}==0    d_点击取消
    等待关键字成功    d_点击确定

支付宝支付

微信支付
