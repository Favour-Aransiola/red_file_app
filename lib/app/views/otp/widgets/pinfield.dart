import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:red_file/app/extensions/extensions.dart';
import 'package:red_file/app/providers/otpProvider.dart';

class PinField extends StatelessWidget {
  const PinField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        bool loading = ref.watch(is_loading);
        return Container(
            width: double.infinity,
            height: 57.wp(MediaQuery.of(context).size.width),
            padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.wp(MediaQuery.of(context).size.width)),
            child: Form(
              key: otpKey,
              child: PinCodeTextField(
                errorTextSpace: 25,
                autovalidateMode: AutovalidateMode.disabled,
                errorTextMargin:
                    EdgeInsets.all(15.wp(MediaQuery.of(context).size.width)),
                appContext: context,
                length: 4,
                onChanged: (value) {},
                autoDismissKeyboard: true,
                obscureText: true,
                validator: (value) {
                  return otpValidator(value);
                },
                pinTheme: PinTheme(
                  activeColor: const Color(0xff222831),
                  borderRadius: BorderRadius.circular(
                      11.2.wp(MediaQuery.of(context).size.width)),
                  fieldHeight: 55.wp(MediaQuery.of(context).size.width),
                  fieldWidth: 55.wp(MediaQuery.of(context).size.width),
                  shape: PinCodeFieldShape.box,
                  inactiveColor: const Color(0xff222831),
                  errorBorderColor: Colors.red,
                  selectedColor: const Color(0xff222831),
                ),
              ),
            ));
      },
    );
  }
}
