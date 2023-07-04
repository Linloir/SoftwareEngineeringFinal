import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/cubit/password_cubit.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/widget/password_input.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/widget/retype_password_input.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/password/widget/submit_button.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userinfo/userinfo_page.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({
    Key? key,
    required this.userClaim,
  }) : super(key: key);

  final String userClaim;

  static Route<void> route({
    required String userClaim,
  }) {
    return MaterialPageRoute<void>(
      builder: (_) => PasswordPage(
        userClaim: userClaim,
      ),
      settings: const RouteSettings(name: '/login/register/password'),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PasswordCubit>(
      create: (context) => PasswordCubit(),
      child: BlocListener<PasswordCubit, PasswordState>(
        listener: (context, state) {
          if (state.status == PasswordStatus.valid) {
            context.read<PasswordCubit>().nextPageShown();
            Navigator.of(context).push(UserInfoPage.route(
              userClaim: userClaim,
              password: md5.convert(utf8.encode(state.password.value)).toString(),
            ));
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
                      'reg.password.hint.page_title'.tr(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'reg.password.hint.page_desc'.tr(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 0),
                      PasswordInput(),
                      SizedBox(height: 12),
                      RetypePasswordInput(),
                      SizedBox(height: 32),
                      SubmitButton(),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
