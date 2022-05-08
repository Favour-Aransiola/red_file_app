import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:red_file/app/extensions/extensions.dart';

class MyBottomModal extends StatelessWidget {
  const MyBottomModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 392.wp(MediaQuery.of(context).size.width),
        width: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 44.wp(MediaQuery.of(context).size.width),
          ),
          SizedBox(
              width: 70.wp(MediaQuery.of(context).size.width),
              height: 70.wp(MediaQuery.of(context).size.width),
              child: Image.asset('assets/icon/fire_cracker.png',
                  fit: BoxFit.cover)),
          SizedBox(
            height: 27.wp(MediaQuery.of(context).size.width),
          ),
          Text('Account Verified!',
              style: TextStyle(
                  fontSize: 20.wp(MediaQuery.of(context).size.width),
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff092c4c),
                  height: 1.25)),
          SizedBox(
            height: 17.wp(MediaQuery.of(context).size.width),
          ),
          Text('Your account has been sucessfully verified',
              style: TextStyle(
                  fontSize: 14.wp(MediaQuery.of(context).size.width),
                  color: const Color(0xff969696),
                  height: 1.57)),
          SizedBox(
            height: 50.wp(MediaQuery.of(context).size.width),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/file', (route) => false);
            },
            child: Container(
                width: 252.wp(MediaQuery.of(context).size.width),
                height: 56.wp(MediaQuery.of(context).size.width),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        8.wp(MediaQuery.of(context).size.width)),
                    color: const Color(0xffff9a9a)),
                child: Text('Open File',
                    style: TextStyle(
                        fontSize: 16.wp(MediaQuery.of(context).size.width),
                        color: const Color(0xffffffff),
                        height: 1.5))),
          )
        ]));
  }
}
