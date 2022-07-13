import 'package:benimsite/Constants%20Data%20and%20Theme/extention.dart';
import 'package:benimsite/web.dart';
import 'package:benimsite/phone.dart';
import 'package:flutter/material.dart';
import 'Constants Data and Theme/theme.dart';

void main() {
  runApp(const Benimsite());
}

class Benimsite extends StatelessWidget {
  const Benimsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: yaptema,
        debugShowCheckedModeBanner: false,
        title: "BenimSitem",
        home: Ekran());
  }
}

class Ekran extends StatefulWidget {
  const Ekran({Key? key}) : super(key: key);

  @override
  _EkranState createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: context.dynwidth(1) < 650 ? phone() : web()));
  }
}
