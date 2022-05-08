import 'package:red_file/app/extensions/extensions.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular(8.wp(MediaQuery.of(context).size.width)),
              bottomRight:
                  Radius.circular(8.wp(MediaQuery.of(context).size.width)))),
      expandedHeight: 222.wp(MediaQuery.of(context).size.width),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            SizedBox(
                height: 222.wp(MediaQuery.of(context).size.width),
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/fileImg.png',
                    fit: BoxFit.cover)),
            Positioned(
              bottom: 15.wp(MediaQuery.of(context).size.width),
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75.wp(MediaQuery.of(context).size.width),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.transparent])),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75.wp(MediaQuery.of(context).size.width),
                  child: Padding(
                    padding: EdgeInsets.all(
                        15.wp(MediaQuery.of(context).size.width)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      width: 25.wp(
                                          MediaQuery.of(context).size.width),
                                      height: 25.wp(
                                          MediaQuery.of(context).size.width),
                                      child: Image.asset(
                                          'assets/icon/Heart.png',
                                          fit: BoxFit.cover)),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 25.wp(
                                            MediaQuery.of(context).size.width),
                                      ),
                                      Text('10',
                                          style: TextStyle(
                                              color: const Color(0xffff5a5a),
                                              fontSize: 14.wp(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width),
                                              height: 1.25))
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                  width:
                                      25.wp(MediaQuery.of(context).size.width)),
                              Column(
                                children: [
                                  Container(
                                      width: 25.wp(
                                          MediaQuery.of(context).size.width),
                                      height: 25.wp(
                                          MediaQuery.of(context).size.width),
                                      child: Image.asset('assets/icon/Chat.png',
                                          fit: BoxFit.cover)),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 25.wp(
                                            MediaQuery.of(context).size.width),
                                      ),
                                      Text('7',
                                          style: TextStyle(
                                              color: const Color(0xffffffff),
                                              fontSize: 14.wp(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width),
                                              height: 1.25))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width:
                                      25.wp(MediaQuery.of(context).size.width),
                                  height:
                                      25.wp(MediaQuery.of(context).size.width),
                                  child: Image.asset('assets/icon/share.png',
                                      fit: BoxFit.cover)),
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffffffff),
    );
  }
}
