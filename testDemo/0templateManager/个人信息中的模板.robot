*** Settings ***
Resource          ../1flowManager/个人信息中的流程.robot

*** Keywords ***
修改手机测试模板
    [Arguments]    ${isClickOldVerifyCode}=    ${oldVerifyCode}=    ${expect1}=    ${isClickNewVerifyCode}=    ${newMobile}=    ${newVerifyCode}=
    ...    ${expect2}=
    #验证手机流程    ${isClickOldVerifyCode}    ${oldVerifyCode}    ${expect1}
    修改手机流程    ${isClickNewVerifyCode}    ${newMobile}    ${newVerifyCode}    ${expect2}

验证手机测试模板
    [Arguments]    ${isClickOldVerifyCode}=    ${oldVerifyCode}=    ${expect1}=
    验证手机流程    ${isClickOldVerifyCode}    ${oldVerifyCode}    ${expect1}

修改昵测试称模板
    [Arguments]    ${nickname}=    ${expect}=
    修改昵称流程    ${nickname}    ${expect}

上传头像测试模板
    [Arguments]    ${unloadPic}=    ${expect}=
    上传头像流程    ${unloadPic}    ${expect}

修改性别测试模板
    [Arguments]    ${value}    ${expect}
    修改性别流程    ${value}    ${expect}

修改出生日期测试模板
    [Arguments]    ${birthday}=    ${expect}=
    修改出生日期流程    ${birthday}    ${expect}
