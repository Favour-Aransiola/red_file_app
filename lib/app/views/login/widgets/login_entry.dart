import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:red_file/app/extensions/extensions.dart';
import 'package:red_file/app/providers/loginProvider.dart';

class LoginEntry extends ConsumerWidget {
  const LoginEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final visibility = ref.watch(visibilityState);
    return Container(
      margin: EdgeInsets.only(
          top: 27.wp(MediaQuery.of(context).size.width),
          bottom: 116.wp(MediaQuery.of(context).size.width)),
      child: Form(
        key: formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Username or Email',
            style: TextStyle(
                fontSize: 16.wp(MediaQuery.of(context).size.width),
                height: 1.5),
          ),
          SizedBox(
            height: 16.wp(MediaQuery.of(context).size.width),
          ),
          SizedBox(
            height: 55.wp(MediaQuery.of(context).size.width),
            child: TextFormField(
              validator: (value) {
                return emailValidator(value);
              },
              style: TextStyle(
                  fontSize: 14.wp(MediaQuery.of(context).size.width),
                  height: 1.5),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  top: 16.wp(MediaQuery.of(context).size.width),
                  bottom: 16.wp(MediaQuery.of(context).size.width),
                  left: 25.07.wp(MediaQuery.of(context).size.width),
                  right: 12.04.wp(MediaQuery.of(context).size.width),
                ),
                hintText: 'Enter your username or email address',
                hintStyle: TextStyle(
                    color: const Color(0xffC2C9D1),
                    fontSize: 14.wp(MediaQuery.of(context).size.width),
                    height: 1.5),
                focusColor: const Color(0xffC2C9D1),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffC2C9D1),
                  ),
                  borderRadius: BorderRadius.circular(
                      4.wp(MediaQuery.of(context).size.width)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.wp(MediaQuery.of(context).size.width)),
          Text(
            'Password',
            style: TextStyle(
                fontSize: 16.wp(MediaQuery.of(context).size.width),
                height: 1.5),
          ),
          SizedBox(
            height: 16.wp(MediaQuery.of(context).size.width),
          ),
          SizedBox(
              height: 55.wp(MediaQuery.of(context).size.width),
              child: TextFormField(
                validator: (value) {
                  return passwordValidator(value);
                },
                obscureText: visibility,
                style: TextStyle(
                    fontSize: 14.wp(MediaQuery.of(context).size.width),
                    height: 1.5),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 16.wp(MediaQuery.of(context).size.width),
                      bottom: 16.wp(MediaQuery.of(context).size.width),
                      left: 25.07.wp(MediaQuery.of(context).size.width),
                      right: 12.04.wp(MediaQuery.of(context).size.width),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                        color: const Color(0xffC2C9D1),
                        fontSize: 14.wp(MediaQuery.of(context).size.width),
                        height: 1.5),
                    focusColor: const Color(0xffC2C9D1),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffC2C9D1),
                      ),
                      borderRadius: BorderRadius.circular(
                          4.wp(MediaQuery.of(context).size.width)),
                    ),
                    suffixIcon: visibility == true
                        ? IconButton(
                            icon: Icon(Icons.visibility,
                                color: const Color(0xffC2C9D1),
                                size: 20.wp(MediaQuery.of(context).size.width)),
                            onPressed: () {
                              ref.read(visibilityState.notifier).state = false;
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.visibility_off,
                                color: const Color(0xffC2C9D1),
                                size: 20.wp(MediaQuery.of(context).size.width)),
                            onPressed: () {
                              ref.read(visibilityState.notifier).state = true;
                            })),
              )),
          SizedBox(height: 16.wp(MediaQuery.of(context).size.width)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text('Forgot Password?',
                  style: TextStyle(
                    color: const Color(0xffFF5A5A),
                    fontSize: 16.wp(MediaQuery.of(context).size.width),
                    height: 1.5,
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
