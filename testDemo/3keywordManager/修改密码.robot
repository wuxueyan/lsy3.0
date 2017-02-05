*** Keywords ***
点击获取验证码
    click element    id=btn-verify-code

输入验证码
    [Arguments]    ${verifycode}=
    input text    name=verifycode    ${verifycode}

输入新密码
    [Arguments]    ${newPassword}=
    input text    name=newpassword    ${newPassword}

提示语修改成功
    page should contain    修改成功

提示语修改登录密码成功
    page should contain    修改登录密码成功
