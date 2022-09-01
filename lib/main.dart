import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(Mostafa());
}
_calling() async {
  const url = 'tel:+20 100 194 5639';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
String email="mostafa.gamiil27@gmail.com";
_launchEmail() async {
  if (await canLaunch("mailto:$email")) {
    await launch("mailto:$email");
  } else {
    throw 'Could not launch';
  }
}
class Mostafa extends StatelessWidget {
  const Mostafa({Key? key}) : super(key: key);
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
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage:
                  AssetImage('images/Mostafa.jpeg'),
                ),
                const Text(
                  'Mostafa Gamil',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Flutter Developer',
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
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Row(children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal.shade700,
                      ),
                      Text(
                        '   +20 100 194 5639',
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
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Row(children: [

                      Icon(
                        Icons.email,
                        color: Colors.teal.shade700,
                      ),
                      Text(
                        '  mostafa.gamiil27@gmail.com',
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
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 90.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.teal.shade900,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Cairo, Egypt',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'images/qr.png',
                  height: 170,
                  width: 170,
                )
              ],
            )),
      ),
    );
  }
}
