*** Settings ***
Resource          ../2pageObjectManager/登录页.robot
Resource          ../3keywordManager/公共关键字.robot

*** Keywords ***
登录流程
    [Arguments]    ${mobile}=    ${password}=    ${expect}=
    登录    ${mobile}    ${password}
    #校验登录结果    ${expect}
    wait until keyword succeeds    30s    0.5s    校验登录结果    ${expect}
    休眠
