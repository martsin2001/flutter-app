import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.all(15),
          child: new Text(
            'H, this is my first flutter app, and I got know how to do on site https://flutter.dev/!',
            style: TextStyle(fontSize: 25).apply(),
          ),
        ),
        new Padding(
            padding: EdgeInsets.all(15),
            child: new FlatButton(
              onPressed: () async {
                if (await canLaunch('https://flutter.dev/')) {
                  await launch('https://flutter.dev/');
                }
              },
              padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: SizedBox(
                  width: double.infinity,
                  child: new Text(
                    'View site',
                    style: TextStyle(fontSize: 20).apply(),
                  )),
              color: Colors.orange[700],
              textColor: Colors.white,
            ))
      ],
    );
  }
}

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
        appBar: new AppBar(title: new Text('My first flutter app!')),
        body: new Body())));
