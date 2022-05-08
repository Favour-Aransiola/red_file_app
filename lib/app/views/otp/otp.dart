import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:red_file/app/extensions/extensions.dart';
import 'package:red_file/app/views/otp/widgets/customAppBar.dart';
import 'package:red_file/app/views/otp/widgets/pinfield.dart';
import 'package:red_file/app/views/otp/widgets/resend.dart';
import 'package:red_file/app/views/otp/widgets/verifyButton.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          MyCustomAppBar(),
          PinField(),
          SizedBox(height: 75.wp(MediaQuery.of(context).size.width)),
          VerifyButton(),
          Resend()
        ]),
      ),
    );
  }
}
