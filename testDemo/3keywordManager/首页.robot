*** Keywords ***
点击我的
    click link    我的

点击购物车
    click link    购物车

点击首页
    click link    首页

点击分类
    click element    分类

输入搜索关键字
    [Arguments]    ${search_content}=
    input text    id=ipt_keyword    ${search_content}

点击搜索输入框
    click element    id=btn-search-product

提示语店铺名称
    page should contain    您所在的店铺位置

点击搜索
    click element    id=btn-submit
