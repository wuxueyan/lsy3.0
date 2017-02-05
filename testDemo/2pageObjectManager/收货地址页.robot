*** Settings ***
Resource          ../3keywordManager/收货地址管理.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../conf.txt
Resource          ../3keywordManager/个人中心.robot
Resource          ../3keywordManager/账户设置.robot

*** Keywords ***
新增收货地址
    [Arguments]    ${receiver}=    ${contactTel}=    ${province}=    ${prefecture}=    ${district}=    ${address}=
    输入收货人    ${receiver}
    输入联系方式    ${contactTel}
    选择省    ${province}
    sleep    3s
    wait until keyword succeeds    30s    0.2s    选择市    ${prefecture}
    sleep    5s
    选择所在区    ${district}
    输入详细地址    ${address}
    点击保存

跳转到新增收货地址页
    等待关键字成功    成功登录
    等待关键字成功    滚动条滑到底部
    等待关键字成功    点击账户设置
    等待关键字成功    点击收货地址管理
    等待关键字成功    点击新增收货地址

校验新增收货地址结果
    [Arguments]    ${expect}=
    run keyword if    '${expect}'=='添加成功'    提示语添加成功

选择省
    [Arguments]    ${province}=
    wait until keyword succeeds    30s    1s    选择所在省    ${province}

选择市
    [Arguments]    ${prefecture}=
    wait until keyword succeeds    30s    1s    选择所在市    ${prefecture}

选择区
    [Arguments]    ${district}=
    wait until keyword succeeds    30s    1s    选择所在区    ${district}
