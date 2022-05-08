import 'package:flutter/material.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:red_file/app/extensions/extensions.dart';

class DropCap extends StatelessWidget {
  const DropCap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropCapText(
      lorem(paragraphs: 1, words: 100),
      dropCapStyle: TextStyle(
          color: Color(0xffff5a5a),
          fontSize: 38.wp(MediaQuery.of(context).size.width),
          fontWeight: FontWeight.w700,
          height: 1.25),
      style: TextStyle(
          color: Color(0xff092c4c),
          fontSize: 16.wp(MediaQuery.of(context).size.width),
          height: 1.6),
    );
  }
}
