*** Settings ***
Resource          ../2pageObjectManager/个人信息页.robot
Resource          ../2pageObjectManager/修改昵称页.robot
Resource          ../2pageObjectManager/修改手机页.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../2pageObjectManager/修改性别页.robot
Resource          ../conf.txt
Resource          ../2pageObjectManager/修改出生日期页.robot

*** Keywords ***
修改手机流程
    [Arguments]    ${newMobile}=    ${clickGetNewCode}=    ${newVerifyCode}=    ${expect2}=
    修改手机    ${newMobile}    ${clickGetNewCode}    ${newVerifyCode}
    wait until keywords Succeeds    10s    0.2s    校验修改手机结果    ${expect2}
    休眠

修改昵称流程
    [Arguments]    ${nickname}=    ${expect}=
    wait until keyword succeeds    30s    1s    修改昵称    ${nickname}
    wait until keyword succeeds    30s    1s    校验修改昵称结果    ${expect}
    休眠

验证手机流程
    [Arguments]    ${clickGetOldCode}=    ${oldVerifyCode}=    ${expect1}=
    验证手机    ${clickGetOldCode}    ${oldVerifyCode}
    wait until keyword succeeds    10s    0.2s    校验验证手机结果    ${expect1}

上传头像流程
    [Arguments]    ${uploadPic}=    ${expect}=
    上传头像    ${uploadPic}
    校验上传头像结果    ${expect}
    休眠

修改性别流程
    [Arguments]    ${value}    ${expect}
    wait until keyword succeeds    10s    1s    修改性别    ${value}
    wait until keyword succeeds    10s    1s    校验修改性别结果    ${expect}
    休眠

修改出生日期流程
    [Arguments]    ${birthday}=    ${expect}=
    wait until keyword succeeds    10s    1s    修改出生日期    ${birthday}
    wait until keyword succeeds    10s    1s    校验修改出生日期结果    ${expect}
    休眠
