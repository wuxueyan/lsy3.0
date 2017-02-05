*** Settings ***
Resource          修改支付密码页.robot
Resource          修改登录密码页.robot
Resource          ../3keywordManager/公共关键字.robot

*** Keywords ***
校验页面标题
    [Arguments]    ${info_title}
    ${get_page_title}    获取页面标题
    should be equal    ${get_page_title}    ${info_title}

修改密码
    [Arguments]    ${isClickCode}=    ${verifyCode}=    ${newPassword}=
    run keyword if    ${isClickCode}==0    点击获取验证码
    休眠
    输入验证码    ${verifyCode}
    等待关键字成功    点击下一步
    wait until keyword succeeds    10s    0.2s    输入新密码    ${newPassword}
    等待关键字成功    点击保存
