import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/login/cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == LogStatus.submitted
            ? null
            : () => context.read<LoginCubit>().loginRequested(),
          child: state.status == LogStatus.submitted
            ? const SizedBox(
              height: 14,
              width: 14,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            )
            : Text('login_button_text'.tr()),
        );
      },
    );
  }
}
