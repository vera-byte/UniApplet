import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:uni_applet/uni_applet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  String _callBackMessage = '';
  final _unimpPlugin = Unimp();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _unimpPlugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          children: [
            Text('Running on: $_platformVersion\n'),
            Text(
              '_callBackMessage on: $_callBackMessage\n',
              style: const TextStyle(color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () async {
                String? value = await _unimpPlugin.initUniMp();
                setState(() {
                  _callBackMessage = value ?? "";
                });
              },
              child: const Text("初始化Unimp"),
            ),
            ElevatedButton(
              onPressed: () async {
                String? value = await _unimpPlugin.openUniMp("__UNI__11E9B73");
                setState(() {
                  _callBackMessage = value ?? "";
                });
              },
              child: const Text("打开__UNI__11E9B73"),
            ),
          ],
        ),
      ),
    );
  }
}
