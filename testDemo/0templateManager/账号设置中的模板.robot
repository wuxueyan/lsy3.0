*** Settings ***
Resource          ../1flowManager/账号设置中的流程.robot

*** Keywords ***
新增收货地址测试模板
    [Arguments]    ${receiver}=    ${contactTel}=    ${province}=    ${prefecture}=    ${district}=    ${address}=
    ...    ${expect}=
    新增收货地址流程    ${receiver}    ${contactTel}    ${province}    ${prefecture}    ${district}    ${address}
    ...    ${expect}

修改登录密码测试模板
    [Arguments]    ${isClickCode}=    ${verifyCode}=    ${newPassword}=    ${expect}=
    修改登录密码流程    ${isClickCode}    ${verifyCode}    ${newPassword}    ${expect}

意见反馈测试模板
    [Arguments]    ${feedback_content}=    ${expect}=
    意见反馈流程    ${feedback_content}    ${expect}

修改支付密码测试模板
    [Arguments]    ${isClickCode}=    ${verifyCode}=    ${newPassword}=    ${expect}=
    修改支付密码流程    ${isClickCode}    ${verifyCode}    ${newPassword}    ${expect}
