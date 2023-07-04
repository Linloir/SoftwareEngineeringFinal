import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userclaim/cubit/userclaim_cubit.dart';
import 'package:whatelse_client/utils/user_claim.dart';

class UserClaimInput extends StatelessWidget {
  const UserClaimInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserClaimCubit, UserClaimState>(
      buildWhen: (previous, current) {
        return previous.userClaim != current.userClaim
          || previous.runtimeType != current.runtimeType;
      },
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_userclaimInput_textField'),
          onChanged: (userClaim) {
            final type = getClaimType(userClaim);
            if (type == UserClaimType.invalid) {
              context.read<UserClaimCubit>().userClaimChanged('+86-$userClaim');
            }
            else {
              context.read<UserClaimCubit>().userClaimChanged(userClaim);
            }
          },
          decoration: InputDecoration(
            labelText: 'reg.userclaim.hint.input_hint'.tr(),
            errorText: state is UserClaimFailed ? state.errMsg : null,
          ),
        );
      },
    );
  }
}
