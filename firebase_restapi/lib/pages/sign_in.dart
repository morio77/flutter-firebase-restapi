import 'package:firebase_auth_rest/firebase_auth_rest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

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
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: emailTextEditingController,
                maxLength: 30,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: 'メールアドレスを入力してください',
                  labelText: 'メールアドレス *',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: passwordTextEditingController,
                maxLength: 15,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'パスワードを入力してください',
                  labelText: 'パスワード *',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => SignInWithPassword(),
              child: Text('登録する'),
            )
          ],
        ),
      ),
    );
  }

  /// E-mail/Passでログイン
  Future<void> SignInWithPassword() async {
    final client = Client();
    final apiKey = env['APIKEY'];
    try {
      final fbAuth = FirebaseAuth(client, apiKey, 'ja-JP');
      final account = await fbAuth.signInWithPassword(emailTextEditingController.text, passwordTextEditingController.text);

      print(await account.getDetails());

      Navigator.pop(context);

    } catch (e) {
      print(e);
    } finally {
      print('Clientをクローズします。');
      client.close();
    }
  }
}