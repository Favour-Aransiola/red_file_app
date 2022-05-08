import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:red_file/app/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:red_file/app/views/file/widgets/fileText.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20.wp(MediaQuery.of(context).size.width), vertical: 0),
        child: Column(
          children: [
            Text(
                'Generation Tank For New Beasts. An Uprising Of Terrific Mobile Devs',
                style: TextStyle(
                    color: const Color(0xff092c4c),
                    fontSize: 21.wp(MediaQuery.of(context).size.width),
                    fontWeight: FontWeight.w700,
                    height: 1.3)),
            SizedBox(height: 8.wp(MediaQuery.of(context).size.width)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15.wp(MediaQuery.of(context).size.width),
                    backgroundImage:
                        const AssetImage('assets/images/profile1.png'),
                  ),
                  SizedBox(width: 8.wp(MediaQuery.of(context).size.width)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('AUSA Angela Valdes',
                          style: TextStyle(
                              fontSize:
                                  10.wp(MediaQuery.of(context).size.width),
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffff5a5a),
                              height: 1.255)),
                      SizedBox(height: 3.wp(MediaQuery.of(context).size.width)),
                      Text('April 28, 2022  | 0400',
                          style: TextStyle(
                              fontSize:
                                  10.wp(MediaQuery.of(context).size.width),
                              color: const Color(0xff969696),
                              height: 1.255))
                    ],
                  )
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10.wp(MediaQuery.of(context).size.width)),
                      border:
                          Border.all(color: const Color(0xff0eb631), width: 2)),
                  padding: EdgeInsets.symmetric(
                      horizontal: 15.wp(MediaQuery.of(context).size.width),
                      vertical: 5.wp(MediaQuery.of(context).size.width)),
                  child: Text('Soft',
                      style: TextStyle(
                          fontSize: 12.wp(MediaQuery.of(context).size.width),
                          color: const Color(0xff0eb631),
                          height: 1.255)))
            ]),
            SizedBox(height: 20.wp(MediaQuery.of(context).size.width)),
            const Divider(color: Color(0xffe8e9ed)),
            SizedBox(height: 16.wp(MediaQuery.of(context).size.width)),
            const DropCap(),
            SizedBox(height: 16.wp(MediaQuery.of(context).size.width)),
            Text(lorem(paragraphs: 1, words: 100),
                style: TextStyle(
                    color: const Color(0xff092c4c),
                    fontSize: 16.wp(MediaQuery.of(context).size.width),
                    height: 1.6))
          ],
        ),
      ),
    ]));
  }
}
