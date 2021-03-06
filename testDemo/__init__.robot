*** Settings ***
Documentation      一、概况
...               本测试架构主要分为5层：testData/testCase、templateManager、flowManager、pageObjectManager、keywordManager
...               二、详情
...               第一层：testDate/testCase
...               用例及数据层：测试数据/测试用例（引入模板）、关键字+数据
...               第二层：templateManager
...               测试模板层：结合flowManager加入pageObject/keyword断言
...               第三层：flowManager
...               流程层：主要结合pageObject各个方法完成业务功能的封装
...               第四层:pageObjectManger
...               方法层：主要封装纯功能的方法、逻辑等进行封装
...               第五层：keywordManager
...               元素层：本层主要定位页面元素、测试结果提示的封装等
...               注意：
...               1、测试数据
...               采用模板引入的方式，测试数据存放testData/testcase层
...               2、常用配置
...               链接数据库的地址、常用的用户名、官网地址等 比如：base_url
