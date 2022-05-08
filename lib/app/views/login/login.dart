import 'package:flutter/material.dart';
import 'package:red_file/app/extensions/extensions.dart';
import 'package:red_file/app/views/login/widgets/loginButton.dart';
import 'package:red_file/app/views/login/widgets/login_entry.dart';
import 'package:red_file/app/views/login/widgets/login_text.dart';
import 'package:red_file/app/views/login/widgets/logo.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.wp(MediaQuery.of(context).size.width)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Logo(), LoginText(), LoginEntry(), LoginButton()],
          ),
        ),
      ),
    );
  }
}
