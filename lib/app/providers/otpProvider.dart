import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:red_file/app/views/otp/widgets/bottomModal.dart';
import 'package:red_file/app/extensions/extensions.dart';

GlobalKey<FormState> otpKey = GlobalKey<FormState>();
final is_loading = StateProvider<bool>((ref) => false);
final otpValidating = FutureProvider.autoDispose
    .family(((ref, BuildContext context) => validation(context)));

otpValidator(value) {
  if (value == '') {
    return 'Please enter your OTP';
  } else if (value == '1234') {
    return null;
  } else {
    return 'Invalid OTP';
  }
}

validation(context) {
  bool value = otpKey.currentState!.validate();
  if (value) {
    Future.delayed(const Duration(seconds: 3), () {
      showModalBottomSheet(
          backgroundColor: const Color(0xffffffff),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(8.wp(MediaQuery.of(context).size.width)),
                  topRight: Radius.circular(
                      8.wp(MediaQuery.of(context).size.width)))),
          context: context,
          builder: (context) {
            return MyBottomModal();
          });
    });
  }
}
