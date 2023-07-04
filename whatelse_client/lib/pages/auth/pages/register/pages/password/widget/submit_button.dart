import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/cubit/password_cubit.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordCubit, PasswordState>(
      buildWhen: (previous, current) => previous.isValid != current.isValid,
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('registerForm_continue_raisedButton'),
          onPressed: () => context.read<PasswordCubit>().submit(),
          child: Text('reg.password.hint.next_hint'.tr()),
        );
      }
    );
  }
}