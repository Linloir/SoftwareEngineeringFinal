import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userclaim/cubit/userclaim_cubit.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserClaimCubit, UserClaimState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state is UserClaimLoading
            ? null
            : () => context.read<UserClaimCubit>().userClaimSubmitted(),
          child: state is UserClaimLoading
            ? const SizedBox(
              height: 14,
              width: 14,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            )
            : Text('reg.userclaim.hint.submit_hint'.tr()),
        );
      },
    );
  }
}