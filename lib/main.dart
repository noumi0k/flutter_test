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

class _SampleAppPageState extends State<SampleAppPage>
    with SingleTickerProviderStateMixin {
  List widgets = [];

  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
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
                  child: RotationTransition(
                      turns: curve,
                      child: FlutterLogo(
                        size: 200.0,
                      )),
                  onDoubleTap: () {
                    if (controller.isCompleted) {
                      controller.reverse();
                    } else {
                      controller.forward();
                    }
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
