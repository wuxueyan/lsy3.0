*** Keywords ***
点击获取验证码（旧）
    click element    id=btn-verify-oldcode

输入验证码（旧）
    [Arguments]    ${oldVerifyCode}
    input text    name=oldtelverifycode    ${oldVerifyCode}

输入手机号码（新）
    [Arguments]    ${newMobile}=
    input text    name=newtel    ${newMobile}

点击获取验证码（新）
    input text    id=btn-verify-newcode

输入验证码（新）
    [Arguments]    ${newVerifyCode}
    input text    css=[name=newverifycode]    ${newVerifyCode}

提示语请输入原手机号的验证码
    page should contain    请输入原手机号的验证码

提示语验证码不正确
    page should contain    验证码不正确

提示语验证码发送成功
    page should contain    验证码发送成功

提示语手机号码和验证码都不能为空
    page should contain    手机号码不能为空    请输入新手机号的验证码

提示语手机号码格式错误
    page should contain    手机号码格式错误

提示语该手机号码已经注册
    page should contain    该手机号码已经注册

提示语新手机验证码不正确

提示语修改手机号成功
