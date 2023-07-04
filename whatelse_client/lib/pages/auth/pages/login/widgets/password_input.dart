import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/credential.dart';
import 'package:whatelse_client/pages/auth/pages/login/cubit/login_cubit.dart';
import 'package:whatelse_client/providers/isar_provider.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({ Key? key }): super(key: key);

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => previous.userClaim != current.userClaim,
      listener: (context, state) {
        final cubit = context.read<LoginCubit>();
        Future(() async {
          final isar = await IsarProvider.instance;
          final credentials = await isar.credentials.filter()
            .userClaimEqualTo(state.userClaim.value)
            .findFirst();
          if (credentials != null) {
            _passwordController.text = credentials.password;
            cubit.passwordChanged(credentials.password);
          }
        });
      },
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) {
          return previous.password != current.password
            || previous.status != current.status;
        },
        builder:(context, state) {
          return TextField(
            key: const Key('loginForm_passwordInput_textField'),
            controller: _passwordController,
            onChanged: (password) {
              if (password.isEmpty) {
                context.read<LoginCubit>().passwordChanged('');
                return;
              }
              else {
                context.read<LoginCubit>().passwordChanged(
                  md5.convert(utf8.encode(password)).toString(),
                );
              }
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'login_password_desc'.tr(),
              errorText: state.status == LogStatus.invalid && state.password.isNotValid
                ? state.password.error?.detail
                : null,
            ),
          );
        },
      ),
    );
  }
}
