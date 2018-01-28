## apollo-server-example

------

这个 repo 是根据 apollo-server 文档实践的一个 demo。

Use

1. git clone /项目url

2. yarn install 初始化项目

3. 如果没有安装 nodemon，请 npm i -g nodemon

4. 如果想使用数据库，相应的表及其数据再 _test_文件夹，并注释掉 api/schema/schema.js  

   第 21 行addMockFunctionsToSchema({ schema });

5. yarn run dev 即可跑起项目