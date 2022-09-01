import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Mostafa());
}

_calling() async {
  const url = 'tel:+20 115 595 3690';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
String email="mo73426@gmail.com";
_launchEmail() async {
  if (await canLaunch("mailto:$email")) {
    await launch("mailto:$email");
  } else {
    throw 'Could not launch';
  }
}

class Mostafa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage:
                  AssetImage('images/df7ab684319393.627bbf83722f1.jpg'),
            ),
            Text(
              'Mohamed Hassan',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'UI/UX Designer',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 15.0,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 15.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal.shade700,
                  ),
                  Text(
                    '   +20 115 595 3690',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                  TextButton(
                    child: const Text('        Call Me',
                        style: TextStyle(
                            color: Colors.teal,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15.0)),
                    onPressed: () {
                      _calling();
                    },
                  )
                ])),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(children: [

                  Icon(
                    Icons.email,
                    color: Colors.teal.shade700,
                  ),
                  Text(
                    '  mo73426@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                TextButton(
                    child: const Text('Send Me',
                        style: TextStyle(
                            color: Colors.teal,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15.0)),
                    onPressed: () {
                      _launchEmail();
                    },
                )
                ])),
            Card(
              color: Colors.teal,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 90.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.teal.shade900,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Aswan, Egypt',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  )
                ],
              ),
            ),
            Container(
                child: Image.asset(
              'images/QR.png',
              height: 170,
              width: 170,
            ))
          ],
        )),
      ),
    );
  }
}
