*** Keywords ***
点击逛首页
    click link    逛首页

勾选商品
    click element    css=.mtlo ul li:nth-child(1) com_cricle2

点击取消
    click element    css=.com_btn8

点击确定
    click element    css=.com_btn9

点击完成
    click link    完成

提示语收藏夹空空哒
    page should contain    收藏夹空空哒
