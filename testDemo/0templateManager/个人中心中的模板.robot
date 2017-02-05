*** Settings ***
Resource          ../1flowManager/个人中心中的流程.robot

*** Keywords ***
删除收藏测试模板
    [Arguments]    ${clickConcel}=    ${expect}=
    删除收藏流程    ${clickConcel}    ${expect}
