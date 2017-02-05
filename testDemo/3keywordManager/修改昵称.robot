*** Settings ***
Resource          公共关键字.robot
Resource          个人信息.robot

*** Keywords ***
输入昵称
    [Arguments]    ${nickname}=
    input text    name=nickname    ${nickname}

提示语填写昵称
    page should contain    请填写昵称

提示语昵称最多只能输入20个字
    page should contain    昵称最多只能输入20个字

提示语字符限制
    page should contain    中文，英文，数字或者 "-" 和 "_"

校验修改昵称成功
    [Arguments]    ${nickname}=
    ${nickname_success}    获取昵称
    should be equal    ${nickname_success}    ${nickname}
