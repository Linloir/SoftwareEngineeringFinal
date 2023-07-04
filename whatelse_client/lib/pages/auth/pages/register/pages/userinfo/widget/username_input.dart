import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userinfo/cubit/user_info_cubit.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInfoCubit, UserInfoState>(
      builder: (context, state) {
        return TextField(
          key: const Key('regForm_usernameInput_textField'),
          onChanged: (username) {
            context.read<UserInfoCubit>().userNameChanged(username);
          },
          maxLength: 32,
          decoration: InputDecoration(
            labelText: 'reg.userinfo.hint.input_hint'.tr(),
            errorText: state.status == RegisterStatus.invalid && state.userName.isNotValid
              ? state.userName.error?.detail
              : null,
            counterText: '',
          ),
        );
      },
    );
  }
}