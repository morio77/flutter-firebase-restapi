import 'package:flutter/material.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _OSIconImage(),
                _OSName(),
              ],
            ),
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

  Widget _OSIconImage() {
    return Image.asset('images/OSアイコンサンプル.png');
  }

  Widget _OSName() {
    return Text('MacOSで動作しています');
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
}