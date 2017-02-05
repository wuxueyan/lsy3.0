*** Keywords ***
点击账户明细
    click link    账户明细

点击充值
    click link    充值

输入充值金额
    [Arguments]    ${amount}=
    input text    name=otherNum    ${amount}

获取赠送的积分
    get text    id=integral

点击充值金额
    [Arguments]    ${recharge_amount}
    click link    ${recharge_amount}

点击微信支付
    click element    css=.pay_way li:nth-child(2)

点击下一步
    click element    id=submit_btn
