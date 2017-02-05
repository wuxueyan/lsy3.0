*** Settings ***
Resource          ../3keywordManager/支付成功.robot
Resource          ../3keywordManager/订单支付.robot
Resource          搜索结果页.robot
Resource          商品详情页.robot
Resource          确认订单页.robot
Resource          订单支付页.robot

*** Keywords ***
下单
    [Arguments]    ${search_content}=    ${buyNumber}=    ${payPassword}=    ${isClickCancel}=
    选择商品    ${search_content}
    选择规格
    选择数量    ${buyNumber}
    等待关键字成功    提交订单
    余额支付    ${payPassword}    ${isClickCancel}

校验下单结果
    [Arguments]    ${expect}=
    run keyword if    ${expect}==0    提示语支付成功
