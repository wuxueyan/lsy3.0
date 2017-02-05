*** Settings ***
Resource          ../1flowManager/登录流程.robot

*** Keywords ***
登录测试模板
    [Arguments]    ${mobile}=    ${password}=    ${expect}=
    登录流程    ${mobile}    ${password}    ${expect}
