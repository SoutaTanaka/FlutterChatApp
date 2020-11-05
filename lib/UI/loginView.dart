import 'package:chatapp/impoter.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginView createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  var name = TextEditingController();
  var pass = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  Widget logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 30.0),
          child: Text(
            'ChatApp',
            style: TextStyle(fontSize: 100),
          ),
        ),
      ],
    );
  }

  Widget mailTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'メールアドレス'),
        controller: name,
      ),
    );
  }

  Widget passwordTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(labelText: 'パスワード'),
        controller: pass,
      ),
    );
  }

  Widget signUpButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, ),
      child: GestureDetector(
        onTap: () async{
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return FriendView();
              },
            ),
          );
        },
        child: Container(
            alignment: Alignment.center,
            height: 60.0,
            decoration: BoxDecoration(
                color: Color(0xFF18D191),
                borderRadius: BorderRadius.circular(9.0)),
            child: Text('登録して始める',
                style: TextStyle(fontSize: 25.0, color: Colors.white))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            logo(),
            mailTextField(),
            SizedBox(height: 15.0),
            passwordTextField(),
            signUpButton(),
          ],
        ),
      ),
    );
  }
}
