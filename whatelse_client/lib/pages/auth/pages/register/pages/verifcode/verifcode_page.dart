import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/password_page.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/verifcode/cubit/verifcode_cubit.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/verifcode/widget/pin_input.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/verifcode/widget/resend_btn.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';
import 'package:whatelse_client/utils/user_claim.dart';

class VerifCodePage extends StatelessWidget {
  const VerifCodePage({
    required this.userClaim,
    Key? key,
  }) : super(key: key);

  final String userClaim;

  static Route route({required String userClaim}) {
    return MaterialPageRoute(
      builder: (context) => VerifCodePage(userClaim: userClaim),
      settings: const RouteSettings(name: '/login/register/verifcode'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerifCodeCubit>(
      create: (context) => VerifCodeCubit(
        authRepository: context.read<AuthRepository>(),
        userClaim: userClaim
      ),
      child: BlocListener<VerifCodeCubit, VerifCodeState>(
        listener: (context, state) {
          final cubit = context.read<VerifCodeCubit>();
          if (state.requestStatus == VerifCodeRequestStatus.failed) {
            final requestTooFrequentErr = VerifCodeRequestEvent.requestTooFrequentError.message;
            showOkAlertDialog(
              context: context,
              title: 'reg.verifcode.alert.title'.tr(),
              message: state.errorMsg,
              barrierDismissible: false,
              okLabel: state.errorMsg == requestTooFrequentErr
                ? 'reg.verifcode.alert.actions.ok'.tr()
                : 'reg.verifcode.alert.actions.resend'.tr(),
            ).then((value) {
                cubit.errorDismissed();
                if (state.errorMsg != requestTooFrequentErr) {
                  cubit.sendVerifCode();
                }
            });
          }
          if (state.inputStatus == VerifCodeInputStatus.valid) {
              Navigator.of(context).push(PasswordPage.route(userClaim: userClaim));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'reg.verifcode.hint.page_title'.tr(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'reg.verifcode.hint.page_desc'.tr(
                        args: ['reg.verifcode.hint.device_type.${getClaimType(userClaim).name}'.tr()]
                      ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      userClaim,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      width: double.maxFinite,
                      height: 80,
                      alignment: Alignment.center,
                      child: PinInput(),
                    ),
                    const Spacer(),
                    const ResendBtn(),
                    const SizedBox(height: 28),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
