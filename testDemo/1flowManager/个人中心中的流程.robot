*** Settings ***
Resource          ../3keywordManager/我的收藏.robot
Resource          ../2pageObjectManager/我的收藏页.robot

*** Keywords ***
删除收藏流程
    [Arguments]    ${clickConcel}=    ${expect}=
    我的收藏    ${clickConcel}
    校验删除收藏结果    ${expect}
    等待关键字成功    点击完成

收藏夹为空流程
    等待关键字成功    收藏夹为空
    等待关键字成功    提示语店铺名称
