import 'package:flutter/material.dart';
import 'package:red_file/app/extensions/extensions.dart';

class LoginText extends StatelessWidget {
  const LoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Log In',
            style: TextStyle(
              fontSize: 26.4.wp(MediaQuery.of(context).size.width),
              fontWeight: FontWeight.w700,
              height: 1.36,
            )),
        SizedBox(height: 5.wp(MediaQuery.of(context).size.width)),
        Text(
            'Hello, welcome back. Enter your credentails to open the red alert file',
            style: TextStyle(
                fontSize: 16.wp(MediaQuery.of(context).size.width),
                height: 1.5,
                color: const Color(0xff363C38)))
      ],
    ));
  }
}
