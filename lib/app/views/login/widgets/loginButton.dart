import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:red_file/app/extensions/extensions.dart';
import 'package:red_file/app/providers/loginProvider.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    bool loading = ref.watch(is_loading);
    return GestureDetector(
        onTap: () async {
          ref.read(is_loading.notifier).state = true;
          AsyncValue watchFormState = ref.watch(formValidator(context));
          Future.delayed(const Duration(seconds: 3), () {
            ref.read(is_loading.notifier).state = false;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 16.wp(MediaQuery.of(context).size.width),
              horizontal: 16.wp(MediaQuery.of(context).size.width)),
          alignment: Alignment.center,
          // height: 35.wp(MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
              color: const Color(0xffFF9A9A),
              borderRadius: BorderRadius.circular(
                  8.wp(MediaQuery.of(context).size.width))),
          child: loading == false
              ? Text('Log In',
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontSize: 16.wp(MediaQuery.of(context).size.width),
                      height: 1.5))
              : SizedBox(
                  height: 20.wp(MediaQuery.of(context).size.width),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(
                        color: Color(0xffffffff),
                        strokeWidth: 2.0,
                      ),
                      SizedBox(width: 10.wp(MediaQuery.of(context).size.width)),
                      Text('Please wait ...',
                          style: TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  16.wp(MediaQuery.of(context).size.width),
                              height: 1.5))
                    ],
                  )),
        ));
  }
}
