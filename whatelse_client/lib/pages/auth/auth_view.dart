import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/bloc/auth_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/login/login_page.dart';
import 'package:whatelse_client/pages/splash/splash_page.dart';
import 'package:whatelse_client/pages/main/main_page.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => previous.runtimeType != current.runtimeType,
      listener: (context, state) {
        switch (state.runtimeType) {
          case AuthenticatedState:
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            Navigator.of(context).pushAndRemoveUntil(
              MainPage.route(),
              (route) => route.settings.name == '/',
            );
            break;
          case UnauthenticatedState:
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            Navigator.of(context).pushAndRemoveUntil(
              LoginPage.route(),
              (route) => route.settings.name == '/',
            );
            break;
          case ExpiredState:
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            showOkAlertDialog(
              context: context,
              title: 'login_expired_alert_title'.tr(),
              message: 'login_expired_alert_msg'.tr(),
              okLabel: 'login_expired_alert_ok'.tr(),
              barrierDismissible: false,
            );
            BlocProvider.of<AuthBloc>(context)
              .add(const AuthenticationStatusChangedEvent(
                AuthStatus.unauthenticated,
              ));
            break;
          case LocalState:
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            Navigator.of(context).pushAndRemoveUntil(
              MainPage.route(),
              (route) => route.settings.name == '/',
            );
            break;
        }
      },
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) => previous.needMerge != current.needMerge,
        listener: (context, state) {
          if (state.needMerge) {
            showOkCancelAlertDialog(
              context: context,
              title: 'main.events.merge.title'.tr(),
              message: 'main.events.merge.desc'.tr(),
              okLabel: 'main.events.merge.okText'.tr(),
              cancelLabel: 'main.events.merge.cancelText'.tr(),
              isDestructiveAction: true,
              barrierDismissible: false,
            ).then((value) {
              if (value == OkCancelResult.ok) {
                context.read<AuthBloc>().handleMerge(merge: true);
              }
              else {
                context.read<AuthBloc>().handleMerge(merge: false);
              }
            });
          }
        },
        child: const SplashPage(),
      ),
    );
  }
}
