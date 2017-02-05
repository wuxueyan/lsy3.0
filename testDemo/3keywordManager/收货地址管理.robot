*** Keywords ***
点击新增收货地址
    click element    id=btn_add_addr

输入收货人
    [Arguments]    ${receiver}=
    input text    id=txtname    ${receiver}

输入联系方式
    [Arguments]    ${contactTel}
    input text    name=receivertel    ${contactTel}

选择所在省
    [Arguments]    ${province}=
    #click element    css=#region-container select:nth-child(1)
    sleep    5s
    select from list by Label    xpath=//*[@id="region-container"]/select[1]    ${province}
    sleep    5s
    #click element    css=#region-container select:nth-child(1)

选择所在市
    [Arguments]    ${prefecture}=
    select from list by label    //*[@id="region-container"]/select[2]    ${prefecture}

选择所在区
    [Arguments]    ${district}=
    select from list by label    xpath=//*[@id="region-container"]/select[3]    ${district}

输入详细地址
    [Arguments]    ${address}=
    input text    name=detailedaddre    ${address}

提示语必填项
    page should contain    收货人不能为空    联系方式不能为空    未完成地区选择    详细地址不能为空

点击删除
    click link    删除
