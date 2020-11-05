import 'package:chatapp/impoter.dart';


class FriendView extends StatefulWidget {
  FriendView({Key key}) : super(key: key);

  @override
  FriendViewState createState() => FriendViewState();
}

class FriendViewState extends State<FriendView> {
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
      ),
    );
  }
}
