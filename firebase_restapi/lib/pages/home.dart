import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase RestAPIサンプル'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _OSName(),
          Column(
            children: [
              _SignUpButton(context),
              Container(height: 10,),
              _SignInButton(context),
            ],
          ),
          ],
        ),
      ),
    );
  }

  Widget _OSName() {
    var os = _getCurrentOS().toString().substring(3);
    // return Text('$osで動作しています');
    return Text(env['APIKEY']);
  }

  Widget _SignUpButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/sign_up'),
        child: Text('新規登録'),
    );
  }

  Widget _SignInButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, '/sign_in'),
      child: Text('ログインする'),
    );
  }

  OS _getCurrentOS() {
    if (kIsWeb) {
      return OS.Web;
    }

    if (Platform.isIOS) {
      return OS.iOS;
    }
    else if (Platform.isAndroid) {
      return OS.Android;
    }
    else if (Platform.isMacOS) {
      return OS.MacOS;
    }
    else if (Platform.isWindows) {
      return OS.Windows;
    }
    else if (Platform.isLinux) {
      return OS.Linux;
    }

    return OS.None;
  }
}

enum OS {
  None,
  iOS,
  Android,
  Web,
  MacOS,
  Windows,
  Linux,
}