import 'package:flutter/material.dart';
import 'package:flutter_test_app/Strings.dart';

void main() {
  runApp(SampleAppPage());
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
              ],
            ),
            Text('Row Two'),
            Text('Row Three'),
            Text('Row Four'),
          ],
        ));
  }
}
