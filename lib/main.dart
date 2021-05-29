import 'package:flutter/material.dart';
import 'package:test1/constant.dart';
import 'package:test1/signin_page.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: KPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
              display1:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              button: TextStyle(color: KPrimaryColor),
              headline: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal)),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white.withOpacity(.2))))),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/images.jpg"),
                        fit: BoxFit.cover)),
              )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "LOGIN PAGE\n",
                      style: Theme.of(context).textTheme.display1,
                    ),
                    TextSpan(
                        text: "Hafeez Ul Rehman Laghari",
                        style: Theme.of(context).textTheme.headline)
                  ])),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Signinpage();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: KPrimaryColor),
                    child: Row(children: <Widget>[
                      Text("LOGIN",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.black)),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ]),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
