*** Settings ***
Resource          ../3keywordManager/我的收藏.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../conf.txt
Resource          ../3keywordManager/个人中心.robot

*** Keywords ***
我的收藏
    [Arguments]    ${clickConcel}=
    等待关键字成功    点击编辑
    等待关键字成功    勾选商品
    run keyword if    ${clickConcel}==0    点击取消
    等待关键字成功    点击确定

校验删除收藏结果
    [Arguments]    ${expect}=
    run keyword if    ${expect}==0    提示删除成功

跳转到我的收藏页
    等待关键字成功    成功登录
    等待关键字成功    点击我的收藏
    sleep    10s

收藏夹为空
    等待关键字成功    点击逛首页
