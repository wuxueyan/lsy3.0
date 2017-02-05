*** Settings ***
Resource          ../3keywordManager/个人信息.robot
Resource          ../3keywordManager/上传头像.robot
Resource          ../conf.txt

*** Keywords ***
上传头像
    [Arguments]    ${uploadPic}=
    点击上传头像    ${uploadPic}

校验上传头像结果
    [Arguments]    ${expect}=
    run keyword if    '${expect}'=='成功更新资料'    提示语成功更新头像
    ...    ELSE IF    '${expect}'=='图片类型判断'    提示语图片类型必须是JPG、JPEG、PNG或GIF

跳转到上传头像页
    成功登录
    等待关键字成功    点击头像
