*** Settings ***
Resource          ../2pageObjectManager/搜索结果页.robot
Resource          ../2pageObjectManager/商品详情页.robot
Resource          ../2pageObjectManager/确认订单页.robot
Resource          ../2pageObjectManager/订单支付页.robot
Resource          ../2pageObjectManager/支付成功页.robot
Resource          ../2pageObjectManager/首页.robot

*** Keywords ***
下单成功流程
    [Arguments]    ${search_content}=    ${buyNumber}=    ${payPassword}=    ${isClickCancel}=    ${expect}=
    下单    ${search_content}    ${buyNumber}    ${payPassword}    ${isClickCancel}
    校验下单结果    ${expect}
