import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/bloc/auth_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/login/cubit/login_cubit.dart';
import 'package:whatelse_client/pages/auth/pages/login/widgets/login_button.dart';
import 'package:whatelse_client/pages/auth/pages/login/widgets/userclaim_input.dart';
import 'package:whatelse_client/pages/auth/pages/login/widgets/password_input.dart';
import 'package:whatelse_client/pages/auth/pages/login/widgets/register_button.dart';
import 'package:whatelse_client/pages/auth/pages/login/widgets/store_cr_button.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const LoginPage(),
      settings: const RouteSettings(name: '/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(
        authRepository: context.read<AuthRepository>(),
      ),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          switch (state.status) {
            case LogStatus.failed:
              showOkAlertDialog(
                context: context,
                title: 'login_failed_alert_title'.tr(),
                message: state.errorMsg,
                barrierDismissible: false,
              );
              break;
            case LogStatus.successed:
              context.read<AuthBloc>().add(const AuthenticationStatusChangedEvent(
                AuthStatus.authenticated,
              ));
              break;
            default:
              break;
          }
        },
        child: Scaffold(
          appBar: AppBar(
            leading: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: state.status == LogStatus.localInitializing
                    ? null
                    : () => context.read<LoginCubit>().localInitRequested(),
                );
              }
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const UserClaimInput(),
                PasswordInput(),
                const StoreCrButton(),
                const SizedBox(height: 16),
                const LoginButton(),
                const RegisterButton(),
              ],
            )
          ),
        ),
      ),
    );
  }
}
