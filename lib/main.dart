import 'package:flutter/material.dart';
import 'package:flutter_test_app/Strings.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Strings.welcomeMessage),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Column One'),
                Text('Column Two'),
                Text('Column Three'),
                Text('Column Four'),
                Center(
                    child: GestureDetector(
                  child: FlutterLogo(
                    size: 200.0,
                  ),
                  onTap: () {
                    print("tap");
                  },
                )),
                RaisedButton(
                    onPressed: () {
                      print("click");
                    },
                    child: Text("Button")),
              ],
            ),
          ],
        ));
  }
}
