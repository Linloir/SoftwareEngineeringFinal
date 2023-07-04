import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/login/cubit/login_cubit.dart';
import 'package:whatelse_client/utils/user_claim.dart';

class UserClaimInput extends StatelessWidget {
  const UserClaimInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        return previous.userClaim != current.userClaim
          || previous.status != current.status;
      },
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_userclaimInput_textField'),
          onChanged: (userClaim) {
            final type = getClaimType(userClaim);
            if (type == UserClaimType.invalid) {
              context.read<LoginCubit>().userClaimChanged('+86-$userClaim');
            }
            else {
              context.read<LoginCubit>().userClaimChanged(userClaim);
            }
          },
          decoration: InputDecoration(
            labelText: 'login_userclaim_desc'.tr(),
            errorText: state.status == LogStatus.invalid && state.userClaim.isNotValid
                ? state.userClaim.error?.detail
                : null,
          ),
        );
      },
    );
  }
}
