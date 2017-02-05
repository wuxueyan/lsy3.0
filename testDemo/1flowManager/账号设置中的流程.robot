*** Settings ***
Resource          ../2pageObjectManager/收货地址页.robot
Resource          ../2pageObjectManager/pageObject.robot
Resource          ../2pageObjectManager/意见反馈页.robot

*** Keywords ***
新增收货地址流程
    [Arguments]    ${receiver}=    ${contactTel}=    ${province}=    ${prefecture}=    ${district}=    ${address}=
    ...    ${expect}=
    新增收货地址    ${receiver}    ${contactTel}    ${province}    ${prefecture}    ${district}    ${address}
    校验新增收货地址结果    ${expect}

修改登录密码流程
    [Arguments]    ${isClickCode}=    ${verifyCode}=    ${newPassword}=    ${expect}=
    修改密码    ${isClickCode}    ${verifyCode}    ${newPassword}
    校验修改登录密码结果    ${expect}

意见反馈流程
    [Arguments]    ${feedback_content}=    ${expect}=
    意见反馈    ${feedback_content}
    校验意见反馈结果    ${expect}

修改支付密码流程
    [Arguments]    ${isClickCode}=    ${verifyCode}=    ${newPassword}=    ${expect}=
    修改密码    ${isClickCode}    ${verifyCode}    ${newPassword}
    校验修改支付密码结果    ${expect}
