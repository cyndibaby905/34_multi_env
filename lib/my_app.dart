import './app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    assert(() {
      //Do sth for debug
      print('checking debug in assert ');
      return true;
    }());


    if(kReleaseMode){
      //Do sth for release
      print('checking release from Environment ');
    } else if(kProfileMode) {
      //Do sth for profile
      print('checking profile from Environment ');
    } else {
      //Do sth for debug
      print('checking debug from Environment ');

    }

    var config = AppConfig.of(context);

    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(config.appName),
      ),
      body:  Center(
        child: Text('API host: ${config.apiBaseUrl}'),
      ),
    );
  }
}