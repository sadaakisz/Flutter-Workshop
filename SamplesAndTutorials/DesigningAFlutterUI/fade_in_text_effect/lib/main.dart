import 'package:flutter/material.dart';

const owl_url =
    'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class FadeInDemo extends StatefulWidget {
  const FadeInDemo({Key? key}) : super(key: key);

  @override
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(owl_url),
        TextButton(
          onPressed: () => setState(() {
            opacity < 1 ? opacity = 1 : opacity = 0;
          }),
          child: Text(
            'Show details',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
        AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: opacity,
          child: Column(
            children: [
              Text('Type: Owl'),
              Text('Age: 39'),
              Text('Employment: None'),
            ],
          ),
        ),
      ],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: FadeInDemo(),
        ),
      ),
    );
  }
}
