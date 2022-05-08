import 'package:flutter/material.dart';
import 'package:red_file/app/extensions/extensions.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 29.wp(MediaQuery.of(context).size.width),
          bottom: 9.wp(MediaQuery.of(context).size.width)),
      width: 40.wp(MediaQuery.of(context).size.width),
      height: 40.wp(MediaQuery.of(context).size.width),
      child: Image.asset('assets/logo/logo.png', fit: BoxFit.cover),
    );
  }
}
