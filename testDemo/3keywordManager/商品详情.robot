*** Keywords ***
点击收藏
    click link    收藏

点击购物车
    click link    点击购物车

点击加入购物车
    click element    id=btn-add-cart

点击立即购买
    click element    id=btn-buy-now

点击详情
    click link    详情

点击评价
    click link    评价

点击规格
    click element    css=.js_radio.clx span:nth-child(1)

点击数量+
    click element    css=.mark13

点击数量-
    click element    css=.mark12

修改数量
    [Arguments]    ${buyNumber}=
    input text    css=.jsq.right input    ${buyNumber}
