import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:whatelse_client/pages/auth/pages/register/pages/verifcode/cubit/verifcode_cubit.dart';

class PinInput extends StatelessWidget {
  PinInput({Key? key}) : super(key: key);

  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(114, 178, 238, 1);
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    const fillColor = Color.fromRGBO(222, 231, 240, .57);
    final defaultPinTheme = PinTheme(
      width: 44,
      height: 48,
      textStyle: GoogleFonts.poppins(
        fontSize: 20,
        color: const Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return BlocBuilder<VerifCodeCubit, VerifCodeState>(
      builder:(context, state) {
        return BlocListener<VerifCodeCubit, VerifCodeState>(
          listener: (context, state) {
            if (state.inputStatus == VerifCodeInputStatus.valid) {
              pinController.clear();
              context.read<VerifCodeCubit>().pinCodeReset();
            }
          },
          child: Pinput(
            length: 6,
            controller: pinController,
            keyboardType: TextInputType.number,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme.copyWith(
              height: 54,
              width: 48,
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: borderColor),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyWith(
              decoration: BoxDecoration(
                color: errorColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            forceErrorState: state.inputStatus == VerifCodeInputStatus.invalid,
            errorText: null,
            errorTextStyle: const TextStyle(
              fontSize: 12,
            ),
            onChanged: (value) {
              context.read<VerifCodeCubit>().pinCodeChanged();
            },
            onCompleted: (value) {
              context.read<VerifCodeCubit>().pinCodeCompleted(value);
            },
          ),
        );
      },
    );
  }
}
