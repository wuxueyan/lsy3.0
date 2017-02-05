*** Settings ***
Resource          ../conf.txt

*** Keywords ***
跳转到首页
    等待关键字成功    成功登录
    等待关键字成功    点击首页
