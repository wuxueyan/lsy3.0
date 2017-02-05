*** Settings ***
Resource          ../3keywordManager/搜索结果.robot
Resource          首页.robot

*** Keywords ***
选择商品
    [Arguments]    ${search_content}=
    等待关键字成功    点击搜索输入框
    输入搜索关键字    ${search_content}
    等待关键字成功    点击商品
