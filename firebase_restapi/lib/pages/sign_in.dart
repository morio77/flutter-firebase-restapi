import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailTextEditingController = TextEditingController();
  var passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログインページ'),
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
              onPressed: () => SignInWithPassword(),
              child: Text('ログイン'),
            )
          ],
        ),
      ),
    );
  }

  /// E-mail/Passでログイン
  Future<void> SignInWithPassword() async {

  }
}