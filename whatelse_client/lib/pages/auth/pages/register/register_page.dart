import 'package:flutter/material.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userclaim/userclaim_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const RegisterPage(),
      settings: const RouteSettings(name: '/login/register'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return const UserClaimPage();
      },
    );
  }
}
