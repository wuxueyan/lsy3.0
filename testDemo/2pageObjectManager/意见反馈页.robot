*** Settings ***
Resource          ../3keywordManager/意见反馈.robot
Resource          ../3keywordManager/公共关键字.robot
Resource          ../conf.txt
Resource          ../3keywordManager/账户设置.robot

*** Keywords ***
意见反馈
    [Arguments]    ${feedback_context}=
    输入反馈内容    ${feedback_context}
    等待关键字成功    点击保存

跳转到意见反馈页
    等待关键字成功    成功登录
    等待关键字成功    滚动条滑到底部
    等待关键字成功    点击账户设置
    等待关键字成功    点击意见反馈

校验意见反馈结果
    [Arguments]    ${expect}=
    run keyword if    '${expect}'=='提交成功'    提示语提交成功
