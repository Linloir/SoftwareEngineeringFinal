import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/bloc/auth_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userinfo/cubit/user_info_cubit.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userinfo/widget/register_button.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userinfo/widget/username_input.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({
    Key? key,
    required this.userClaim,
    required this.password,
  }) : super(key: key);

  static Route<void> route({
    required String userClaim,
    required String password,
  }) {
    return MaterialPageRoute(
      builder: (context) => UserInfoPage(
        userClaim: userClaim,
        password: password,
      ),
      settings: const RouteSettings(name: '/login/register/userinfo'),
    );
  }

  final String userClaim;
  final String password;
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserInfoCubit>(
      create: (context) => UserInfoCubit(
        authRepository: context.read(),
        userClaim: userClaim,
        password: password,
      ),
      child: BlocListener<UserInfoCubit, UserInfoState>(
        listenWhen: (previous, current) => current.status == RegisterStatus.success,
        listener: (context, state) {
          if (state.status == RegisterStatus.success) {
            Navigator.of(context).popUntil((route) => route.settings.name == '/login');
            context.read<AuthBloc>().logIn(
              userClaim: userClaim,
              password: password,
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black
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
                      'reg.userinfo.hint.page_title'.tr(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'reg.userinfo.hint.page_desc'.tr(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 80),
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
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: const UsernameInput(),
                    ),
                    const SizedBox(height: 24),
                    const RegisterButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
