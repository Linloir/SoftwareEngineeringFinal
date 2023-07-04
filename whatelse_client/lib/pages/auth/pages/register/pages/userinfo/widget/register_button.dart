import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userinfo/cubit/user_info_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInfoCubit, UserInfoState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == RegisterStatus.submitted
            ? null
            : () => context.read<UserInfoCubit>().registerSubmitted(),
          child: state.status == RegisterStatus.submitted
            ? const SizedBox(
              height: 14,
              width: 14,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            )
            : Text('reg.userinfo.hint.next_hint'.tr()
          ),
        );
      },
    );
  }
}