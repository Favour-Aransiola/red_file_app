import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:red_file/app/extensions/extensions.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(21.wp(MediaQuery.of(context).size.width)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 47.wp(MediaQuery.of(context).size.width)),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back,
                  size: 30, color: Color(0xfff000000))),
          SizedBox(height: 16.wp(MediaQuery.of(context).size.width)),
          Text(
            'Verification Code',
            style: TextStyle(
                fontSize: 26.4.wp(MediaQuery.of(context).size.width),
                fontWeight: FontWeight.w700,
                height: 1.36,
                color: const Color(0xff222831)),
          ),
          SizedBox(height: 8.wp(MediaQuery.of(context).size.width)),
          Text('Please enter the verification code sent to +234812xxxxx9',
              style: TextStyle(
                  fontSize: 16.wp(MediaQuery.of(context).size.width),
                  height: 1.5,
                  color: const Color(0xff363C38))),
          SizedBox(height: 45.21.wp(MediaQuery.of(context).size.width)),
        ]));
  }
}
