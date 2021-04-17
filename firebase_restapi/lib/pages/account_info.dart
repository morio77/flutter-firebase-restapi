import 'package:flutter/material.dart';

class AccountInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    print(args);

    return Scaffold(
      appBar: AppBar(
        title: Text('アカウント情報ページ'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('アカウント情報'),
      ),
    );
  }
}