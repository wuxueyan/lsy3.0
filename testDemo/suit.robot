*** Settings ***
Resource          0templateManager/登录模板.robot
Resource          3keywordManager/公共关键字.robot
Library           SSHLibrary
Library           Selenium2Library
Resource          conf.txt
Resource          0templateManager/个人信息中的模板.robot
Resource          0templateManager/账号设置中的模板.robot
Resource          0templateManager/个人中心中的模板.robot
Library           ../MyLibrary.py
Resource          0templateManager/前台模板.robot

*** Test Cases ***
登录测试
    [Setup]    跳转到登录页
    [Template]    登录测试模板
    #mobile    password    expect
    \    \    手机号码和密码能为空
    18270720030    123456    pass
    [Teardown]    测试失败时调用

修改昵称测试
    [Setup]    跳转到修改昵称页
    [Template]    修改昵测试称模板
    [Timeout]
    #nickname    expect
    \    请填写昵称
    黑色168    pass
    [Teardown]    测试失败时调用

修改手机测试
    [Setup]    跳转到修改手机页
    [Template]    修改手机测试模板
    #newMobile    clickGetNewCode    newVerifyCode    expect2
    18270720030    0    1234    验证码不正确
    \    \    \    \    \    \    '手机号码和验证码都不能为空'
    [Teardown]    测试失败时调用

验证手机测试
    [Setup]    跳转到验证手机页
    [Template]    验证手机测试模板
    #clickGetOldCode    oldVerifyCode    expect1
    0    \    请输入原手机号的验证码
    [Teardown]    测试失败时调用

上传头像测试
    [Setup]    跳转到上传头像页
    [Template]    上传头像测试模板
    [Timeout]    1 minute
    #unloadpic    expect
    C:\\Users\\Administrator\\Desktop\\项目总体流程.xls    图片类型必须是JPG、JPEG、PNG或GIF
    C:\\Users\\Administrator\\Desktop\\1.png    成功更新资料
    [Teardown]    测试失败时调用

修改性别测试
    [Documentation]    如果要选择女，value输入0
    ...    如果要选择男，value输入1
    [Setup]    跳转到修改性别页
    [Template]    修改性别测试模板
    #value    expect
    0    成功更新资料
    [Teardown]    测试失败时调用

test
    [Tags]    test
    [Timeout]
    Comment    @{list}    set variable    2    3    4
    Comment    :FOR    ${var}    in    @{list}
    Comment    \    exit for loop if    ${var}==4
    Comment    \    log    ${var}
    Comment    open browser    http://pj.dev.easyder.com/index.php?m=user&f=login&referer=Lw==
    Comment    maximize browser window
    Comment    input text    id=account    wuxueyan
    Comment    input text    name=password    wxy1102978037
    Comment    click element    id=submit
    Comment    wait until keyword succeeds    60s    1s    click link    测试
    Comment    wait until keyword succeeds    60s    1s    click link    提Bug
    Comment    wait until keyword succeeds    60s    1s    select frame    css=.ke-edit-iframe
    Comment    click element    css=.article-content
    Comment    input text    css=.article-content    输入成功么
    Comment    sleep    10s
    Comment    ${random}    evaluate    random.randint(1,10)    random
    ${random}    RAN    1    10
    log    ${random}
    [Teardown]

修改出生日期测试
    [Setup]    跳转到修改出生日期页
    [Template]    修改出生日期测试模板
    #birthday    expect
    1992-11-11    pass
    [Teardown]    测试失败时调用

新增收货地址测试
    [Setup]    跳转到新增收货地址页
    [Template]    新增收货地址测试模板
    [Timeout]    1 minute
    #receiver    contactTel    province    prefecture    district    address    expect
    张德华    18270720030    广东    东莞    南城区    隐山路35号    添加成功
    [Teardown]    测试失败时调用

修改支付密码测试
    [Setup]    跳转到修改支付密码页
    [Template]    修改支付密码测试模板
    #isClickCode    verifyCode    newPassword    expect
    1    1898    123456    修改成功
    [Teardown]    测试失败时调用

修改登录密码测试
    [Setup]    跳转到修改登录密码页
    [Template]    修改登录密码测试模板
    #isClickCode    verifyCode    newPassword    expect
    1    1898    123456    修改成功
    [Teardown]    测试失败时调用

意见反馈测试
    [Setup]    跳转到意见反馈页
    [Template]    意见反馈测试模板
    #feedback_content    expect
    我是谁啊还不错呢testluo    提交成功
    [Teardown]    测试失败时调用

删除收藏测试
    [Setup]    跳转到我的收藏页
    [Template]    删除收藏测试模板
    #clickConcel    expect
    3    0
    [Teardown]    测试失败时调用

下单成功测试
    [Setup]    跳转到首页
    [Template]    下单成功测试模板
    #${search_content}    ${buyNumber}    ${payPassword}    ${isClickCancel}    ${expect}
    圣芝红酒    1    123456    1    支付成功
    [Teardown]    测试失败时调用
