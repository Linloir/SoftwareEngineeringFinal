import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/verifcode/cubit/verifcode_cubit.dart';

class ResendBtn extends StatelessWidget {
  const ResendBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifCodeCubit, VerifCodeState>(
      builder: (context, state) {
        return TextButton(
          onPressed: state.requestStatus == VerifCodeRequestStatus.requesting
            || state.requestStatus == VerifCodeRequestStatus.sent
              ? null
              : () => context.read<VerifCodeCubit>().sendVerifCode(),
          child: state.requestStatus == VerifCodeRequestStatus.sent
            ? Text('reg.verifcode.hint.sent_hint'.tr(args: [state.remainingTime.toString()]))
            : Text('reg.verifcode.hint.resend_hint'.tr()),
        );
      },
    );
  }
}