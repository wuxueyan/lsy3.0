*** Keywords ***
点击提现
    click link    提现

点击积分明细
    click link    积分明细

点击选择银行卡
    click element    css=.name

点击添加
    click element    添加

点击添加银行卡
    click link    添加银行卡

点击请选择银行卡

输入开户人名称
    [Arguments]    ${carder}=
    input text    name=carder    ${carder}

输入开户卡号
    [Arguments]    ${cardno}=
    input text    name=cardno    ${cardno}

点击确定
    click element    css=.log_btn.mt10.no

输入提现金额
    [Arguments]    ${draw_amount}=
    input text    id=txtMoney    ${draw_amount}

点击确认提现
    click element    id=btn-submit

提示语积分申请成功
    page should contain    积分申请成功
