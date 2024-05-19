# BobaBrewery-BE

## 项目介绍 

基于springboot的后端接口服务，依赖mysql数据库存储数据。

目录结构介绍：

    ./docker_build.env # 构建镜像的配置文件
    ./pom.xml # maven 配置文件
    ./utils # 数据维护更新脚本
    ./common # 公共类
    ./deployment # 部署构建脚本&&文档
    ./portal-api # 后端服务代码
    ./flyway # 数据库版本管理脚本

## 打包部署步骤

### 1. 构建镜像

按照deployment目录下的文档进行打包部署即可

### 2. 数据维护

使用utils目录下的脚本进行数据维护。

首先需要拿到链上json数据作为参数，使用数据维护脚本更新数据。

    # 用法如下:
    # cd utils
    #  sh generate_update_data.sh [json_file] [server_url]
    # 样例:
    #  sh generate_update_data.sh '{"saleAddress":"0x854D2A5697857E1c7d085ae3649bFC5d02F9a483","saleToken":"0x8332c63860eBAf9eCb1e61fb1829C76D2B2A1cB7","saleOwner":"0x0f590970a45d0b4c2dcfcaFF453400eE9B91B317","tokenPriceInEth":"100000000000","totalTokens":"10000000000000000000000","saleEndTime":1715244920,"tokensUnlockTime":1715244729,"registrationStart":1715243300,"registrationEnd":1715243600,"saleStartTime":1715243720}' 118.31.71.100:8080

