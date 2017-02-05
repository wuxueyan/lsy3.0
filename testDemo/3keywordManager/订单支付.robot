*** Keywords ***
点击立即付款
    click link    立即付款

勾选支付宝支付
    click element    css=.pay_way li:nth-child(2)>i

勾选微信支付
    click element    css=.pay_way li:nth-child(3)>i

输入支付密码
    [Arguments]    ${payPassword}=
    input text    id=payPwd    ${payPassword}

d_点击确定
    click link    确定

d_点击取消
    click link    取消

提示语支付成功
    page should contain    支付成功
