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
    #  bash generate_update_data.sh [json_file] [server_url]
    # 样例:
    #  bash generate_update_data.sh '{"saleAddress":"0x3B02fF1e626Ed7a8fd6eC5299e2C54e1421B626B","saleToken":"0x9A676e781A523b5d0C0e43731313A708CB607508","saleOwner":"0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266","tokenPriceInEth":"100000000000000","totalTokens":"1000000000000000000000000","saleEndTime":1732953310,"tokensUnlockTime":1732953050,"registrationStart":1732952950,"registrationEnd":1732953070,"saleStartTime":1732953190}' localhost:8080
