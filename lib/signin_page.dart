import 'package:flutter/material.dart';
import 'package:test1/constant.dart';

class Signinpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Jawan.png"),
                          alignment: Alignment.bottomCenter)))),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("SIGN IN",
                          style: Theme.of(context).textTheme.display1),
                      Text("SIGN UP", style: Theme.of(context).textTheme.button)
                    ]),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.alternate_email,
                        color: KPrimaryColor,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(hintText: "Email Address"),
                    ))
                  ]),
                ),
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.lock,
                      color: KPrimaryColor,
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(hintText: "Password"),
                  ))
                ]),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white.withOpacity(.5))),
                        child: Icon(Icons.voicemail,
                            color: Colors.white.withOpacity(.5)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white.withOpacity(.5))),
                        child: Icon(Icons.chat,
                            color: Colors.white.withOpacity(.5)),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: KPrimaryColor),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
