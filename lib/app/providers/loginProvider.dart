import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

GlobalKey<FormState> formKey = GlobalKey<FormState>();
final visibilityState = StateProvider<bool>((ref) => false);
final is_loading = StateProvider<bool>((ref) => false);
final formValidator = FutureProvider.autoDispose
    .family(((ref, BuildContext context) => validating(context)));

emailValidator(value) {
  if (value == null || value == '') {
    return 'Please Enter your Email or Username';
  }
  return null;
}

passwordValidator(value) {
  if (value == null) {
    return 'Please Enter your password';
  } else if (value == '1234') {
    return null;
  } else {
    return 'Incorrect Username or Password';
  }
}

Future validating(BuildContext context) async {
  Future.delayed(const Duration(seconds: 3), () {
    bool formstate = formKey.currentState!.validate();
    if (formstate == true) {
      Navigator.pushNamed(context, '/otp');
    } else {
      return false;
    }
  });
}
