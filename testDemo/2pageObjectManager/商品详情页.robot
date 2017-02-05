*** Settings ***
Resource          ../3keywordManager/公共关键字.robot
Resource          ../3keywordManager/商品详情.robot

*** Keywords ***
选择规格
    等待关键字成功    点击规格

选择数量
    [Arguments]    ${buyNumber}=
    修改数量    ${buyNumber}
    等待关键字成功    点击确定

立即购买
    等待关键字成功    点击立即购买
