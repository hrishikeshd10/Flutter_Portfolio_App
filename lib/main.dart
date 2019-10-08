import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.teal, // navigation bar color
    statusBarColor: Colors.teal, // status bar color
  ));
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/hrishikesh'),
            ),
            Text(
              'Hrishikesh Deshmukh',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'SourceSans',
                  color: Colors.teal[100]),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text(
                        '+91-892-863-1431',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSans',
                            fontSize: 20.0),
                      ),
                      leading: Icon(
                        Icons.call,
                        color: Colors.teal,
                        size: 30.0,
                      ),
                    ))),
            SizedBox(
              height: 20.0,
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text(
                        'hrishi.montfort@gmail.com',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSans',
                            fontSize: 20.0),
                      ),
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                        size: 30.0,
                      ),
                    )))
          ],
        )),
      ),
    );
  }
}
