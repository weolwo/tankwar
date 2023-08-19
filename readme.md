# 说明
1. 项目使用javaFx作为ui交互
2. 使用模块化开发
3. 打包使用 jpackage 打包成绿色软件，需提前安装好 wix3.+以上，下载地址 https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm
 
```shell
     jpackage -t app-image -n tank -p . -m com.owen/com.owen.Main --app-version 1.0
```
4. 使用 HM NIS EDIT 创建打包脚本并构建 地址： https://hmne.sourceforge.net
5. 参考：https://www.bilibili.com/read/cv14523427?spm_id_from=333.999.0.0
6. 启动时需添加jvm 参数
```java
--module-path="E:\workspace\javafx-sdk-17.0.8\lib" --add-modules=javafx.controls,javafx.fxml
