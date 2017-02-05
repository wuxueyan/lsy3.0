*** Settings ***
Resource          ../3keywordManager/修改手机号码.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../conf.txt
Resource          ../3keywordManager/个人信息.robot

*** Keywords ***
验证手机
    [Arguments]    ${clickGetOldCode}=    ${oldVerifyCode}=
    run keyword if    ${clickGetOldCode}==0    等待关键字成功    点击获取验证码（旧）
    休眠
    输入验证码（新）    ${oldVerifyCode}
    等待关键字成功    点击下一步

修改手机
    [Arguments]    ${newMobile}=    ${clickGetNewCode}=    ${newVerifyCode}=
    输入手机号码（新）    ${newMobile}
    run keyword if    ${clickGetNewCode}==0    等待关键字成功    点击获取验证码（新）
    输入验证码（新）    ${newVerifyCode}
    等待关键字成功    点击保存

校验验证手机结果
    [Arguments]    ${expect1}=
    run keyword if    '${expect1}'=='请输入原手机号的验证码'    提示语请输入原手机号的验证码
    ...    ELSE IF    '${expect1}'=='验证码不正确'    提示语验证码不正确
    ...    ELSE IF    '${expect1}'=='验证码发送成功'    提示语验证码发送成功

校验修改手机结果
    [Arguments]    ${expect2}=
    run keyword if    '${expect2}'=='手机号码和验证码都不能为空'    提示语手机号码和验证码都不能为空
    ...    ELSE IF    '${expect2}'=='手机号码不能为空'    提示语手机号码不能为空
    ...    ELSE IF    '${expect2}'=='手机号码格式错误'    提示语手机号码格式错误
    ...    ELSE IF    '${expect2}'=='该手机号码已经注册'    提示语该手机号码已经注册
    ...    ELSE IF    '${expect2}'=='新手机验证码不正确'    提示语新手机验证码不正确
    ...    ELSE IF    '${expect2}'=='修改手机验证码不正确'    提示语修改手机号成功

跳转到验证手机页
    成功登录
    等待关键字成功    点击头像
    等待关键字成功    点击修改手机

跳转到修改手机页
    成功登录
    等待关键字成功    点击头像
    等待关键字成功    点击修改手机
    验证手机2    1989
