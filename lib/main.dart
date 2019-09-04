import 'package:flutter/material.dart';
import 'app_config.dart';
import 'my_app.dart';

void main() {
  var configuredApp = AppConfig(
    appName: 'example',//主页标题
    apiBaseUrl: 'http://api.example.com/',//接口域名
    child: MyApp(),
  );
  runApp(configuredApp);//启动应用入口
}