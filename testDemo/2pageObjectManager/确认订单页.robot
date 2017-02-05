*** Settings ***
Resource          ../3keywordManager/公共关键字.robot
Resource          ../3keywordManager/确认订单.robot

*** Keywords ***
选择收货地址

选择配送方式

提交订单
    等待关键字成功    点击提交订单
