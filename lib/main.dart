import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:red_file/app/views/login/login.dart';
import 'package:red_file/app/views/otp/otp.dart';
import 'package:red_file/app/views/file/file.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(const ProviderScope(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xffffffff),
            primaryColor: const Color(0xffff9a9a),
            accentColor: const Color(0xffff5a5a),
            focusColor: const Color(0xffC2C9D1)),
        initialRoute: '/',
        routes: {
          '/': (context) {
            return const Login();
          },
          '/otp': (context) {
            return const Otp();
          },
          '/file': (context) {
            return const File();
          }
        });
  }
}
