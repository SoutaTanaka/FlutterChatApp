import 'package:chatapp/impoter.dart';

class ChatView extends StatefulWidget {
  ChatView({Key key}) : super(key: key);

  @override
  ChatViewState createState() => ChatViewState();
}

class ChatViewState extends State<ChatView> {
  var name = TextEditingController();
  var pass = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'フレンド',
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.blueAccent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'フレンド',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'チャット',
            ),
          ],
        ),
      ),
    );
  }
}
