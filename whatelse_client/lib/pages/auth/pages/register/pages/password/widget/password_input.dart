import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/cubit/password_cubit.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordCubit, PasswordState>(
      builder: (context, state) {
        return TextField(
          key: const Key('regForm_passwordInput_textField'),
          onChanged: (password) {
            context.read<PasswordCubit>().passwordChanged(password);
          },
          maxLength: 16,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'reg.password.hint.input_hint'.tr(),
            errorText: state.status == PasswordStatus.invalid && state.password.isNotValid
              ? state.password.error?.detail
              : null,
            counterText: '',
          ),
        );
      },
    );
  }
}
