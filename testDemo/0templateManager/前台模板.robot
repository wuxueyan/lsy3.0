*** Settings ***
Resource          ../1flowManager/前台流程.robot

*** Keywords ***
下单成功测试模板
    [Arguments]    ${search_content}=    ${buyNumber}=    ${payPassword}=    ${isClickCancel}=    ${expect}=
    下单成功流程    ${search_content}    ${buyNumber}    ${payPassword}    ${isClickCancel}    ${expect}
