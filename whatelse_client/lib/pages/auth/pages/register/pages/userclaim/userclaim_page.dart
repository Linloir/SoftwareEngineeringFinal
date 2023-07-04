import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userclaim/cubit/userclaim_cubit.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userclaim/widget/submit_button.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/userclaim/widget/user_claim_input.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/verifcode/verifcode_page.dart';

class UserClaimPage extends StatelessWidget {
  const UserClaimPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserClaimCubit>(
      create: (context) => UserClaimCubit(
        authRepository: context.read(),
      ),
      child: BlocListener<UserClaimCubit, UserClaimState>(
        listenWhen: (previous, current) => current is UserClaimSuccess,
        listener: (context, state) {
          if (state is UserClaimSuccess) {
            Navigator.of(context).push(VerifCodePage.route(
              userClaim: state.userClaim.value,
            ));
            context.read<UserClaimCubit>().nextPageShown();
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
                      'reg.userclaim.hint.page_title'.tr(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'reg.userclaim.hint.page_desc'.tr(),
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
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: const UserClaimInput(),
                    ),
                    const SizedBox(height: 24),
                    const SubmitButton(),
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
