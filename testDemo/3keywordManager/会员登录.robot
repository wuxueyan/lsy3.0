*** Keywords ***
输入手机号
    [Arguments]    ${mobile}=
    input text    id=txtname    ${mobile}

输入密码
    [Arguments]    ${password}=
    input text    id=txtpwd    ${password}

点击登录
    click element    id=btn-submit

点击注册
    click link    注册

点击快速注册
    click link    快速注册

点击忘记密码
    click link    忘记密码

提示语手机号码和密码不能为空
    page should contain    手机号码不能为空    密码不能为空

提示语密码不能为空
    page should contain    密码不能为空

提示语该账号不存在
    page should contain    该账号不存在

提示语登录账号或密码不正确
    page should contain    登录账号或密码不正确

提示语成功登录
    page should contain    会员等级
