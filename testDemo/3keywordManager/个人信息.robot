*** Keywords ***
点击上传头像
    [Arguments]    ${uploadPic}=
    choose file    id=file-chooser    ${uploadPic}

点击昵称
    click link    昵称

点击出生日期
    click link    出生日期

点击性别
    click link    性别

点击修改手机
    click element    css=.linklis .edit

获取昵称
    get text    css=div.ucset_lis a:nth-child(2) tt

获取出生日期
    get text    css=div.ucset_lis a:nth-child(3) tt

获取性别
    get text    css=div.ucset_lis a:nth-child(4) tt

获取手机号码
    get text    css=.tels

点击账户余额
    click link    账户余额

点击积分
    click link    积分

点击优惠券
    click link    优惠券
