import 'package:flutter/material.dart';
import 'package:red_file/app/extensions/extensions.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.wp(MediaQuery.of(context).size.width)),
        height: 70.wp(MediaQuery.of(context).size.width),
        decoration: BoxDecoration(
            border: Border.all(
          color: const Color(0xff969696),
        )),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          CircleAvatar(
            backgroundImage: const AssetImage('assets/images/profile2.png'),
            radius: 22.wp(MediaQuery.of(context).size.width),
          ),
          SizedBox(
            width: 6.wp(MediaQuery.of(context).size.width),
          ),
          SizedBox(
            width: 295.wp(MediaQuery.of(context).size.width),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your comment ....',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff969696)),
                  borderRadius: BorderRadius.circular(
                      12.wp(MediaQuery.of(context).size.width)),
                ),
              ),
            ),
          )
        ]));
  }
}
