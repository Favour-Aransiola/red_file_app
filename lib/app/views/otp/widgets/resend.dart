import 'package:flutter/material.dart';
import 'package:red_file/app/extensions/extensions.dart';

class Resend extends StatelessWidget {
  const Resend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.wp(MediaQuery.of(context).size.width),
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 25.wp(MediaQuery.of(context).size.width)),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Didn\'t recieve the code?',
                style: TextStyle(
                    fontSize: 16.wp(MediaQuery.of(context).size.width),
                    height: 1.5,
                    color: const Color(0xff222831))),
            TextSpan(
                text: ' Resend',
                style: TextStyle(
                    fontSize: 16.wp(MediaQuery.of(context).size.width),
                    height: 1.5,
                    color: const Color(0xffff9a9a)))
          ]),
        ));
  }
}
