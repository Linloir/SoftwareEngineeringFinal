import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/bloc/auth_bloc.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const MainPage(),
      settings: const RouteSettings(name: '/main'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Text(
                  state.runtimeType == AuthenticatedState
                      ? 'logged_state'.tr()
                      : 'local_state'.tr(),
                );
              }
            ),
            ElevatedButton(
              onPressed: () => context.read<AuthRepository>().logOutDirty(),
              child: Text('logout_button_text'.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
