import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:whatelse_client/pages/auth/pages/register/register_page.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).push(RegisterPage.route()),
      child: Text('register_button_text'.tr()),
    );
  }
}
