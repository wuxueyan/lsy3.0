*** Settings ***
Resource          公共关键字.robot

*** Keywords ***
关闭浏览器
    close all browsers

休眠
    sleep    3

点击左上角的<
    click element    css=.return_btn

点击保存
    click element    id=btn-submit

获取页面标题
    get text    css=.page_tit h3

等待关键字成功
    [Arguments]    ${keyword_success}
    wait until keyword succeeds    10s    0.2s    ${keyword_success}

全屏操作
    maximize browser window

提示语手机号码不能为空
    page should contain    手机号码不能为空

点击编辑
    click link    点击编辑

提示语添加成功
    page should contain    添加成功

提示语成功更新资料
    page should contain    成功更新资料

提示语提交成功
    page should contain    提交成功

滚动条滑到底部
    execute javascript    document.documentElement.scrollTop=10000

点击下一步
    click element    id=btn-next

测试失败时调用
    run keyword if test failed    关闭浏览器
