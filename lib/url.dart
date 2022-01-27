import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(url_lan());
}

class url_lan extends StatefulWidget {
  @override
  _url_lanState createState() => _url_lanState();
}

class _url_lanState extends State<url_lan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "url app",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

launchurl() async {
  const url = 'https://www.youtube.com/channel/UCS3brcF49FE3japE2xM-8gg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "cannot launch $url";
  }
}

launchEmail() async {
  launch(
    'https://myaccount.google.com/?utm_source=sign_in_no_continue&pli=1',
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text(
          'URL Launcher',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              padding: EdgeInsets.only(left: 10, right: 10),
              onPressed: launchurl,
              color: Colors.indigo[900],
              child: Text(
                "Launch url",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.only(left: 10, right: 10),
              onPressed: launchEmail,
              color: Colors.indigo[900],
              child: Text(
                "Email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
