import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailTextEditingController = TextEditingController();
  var passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新規登録ページ'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailTextEditingController,
              enabled: true,
              maxLength: 30,
              style: TextStyle(color: Colors.black),
              obscureText: false,
              maxLines:1 ,
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),　
                hintText: 'メールアドレスを入力してください',
                labelText: 'メールアドレス *',
              ),
            ),
            TextField(
              controller: passwordTextEditingController,
              enabled: true,
              maxLength: 30,
              style: TextStyle(color: Colors.black),
              obscureText: true,
              maxLines:1 ,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'パスワードを入力してください',
                labelText: 'パスワード *',
              ),
            ),
            ElevatedButton(
              onPressed: () => SignUpWithPassword(),
              child: Text('登録する'),
            )
          ],
        ),
      ),
    );
  }

  /// E-mail/Passで新規登録
  Future<void> SignUpWithPassword() async {

  }
}