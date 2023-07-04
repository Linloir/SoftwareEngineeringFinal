import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/login/cubit/login_cubit.dart';

class StoreCrButton extends StatelessWidget {
  const StoreCrButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.storeCredentials != current.storeCredentials,
      builder:(context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Checkbox(
                  value: state.storeCredentials,
                  onChanged: (value) => context.read<LoginCubit>().storeCredentialsChanged(value!),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text('login_store_credentials_desc'.tr()),
            ],
          ),
        );
      },
    );
  }
}