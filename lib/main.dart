import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/pages/login.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Splash(),
));

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff1A1919),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 210),
                child: SvgPicture.asset(
                  "slider/logo.svg",
                  color: Color(0xff4E4E4C),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text(
                  "THE  ADDREES",
                  style: TextStyle(
                    color: Color(0xff4E4E4C),
                    letterSpacing: 11,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
