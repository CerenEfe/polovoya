import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:polovoya/feature/main_stream/main_stream.dart';

import '../../core/components/button/custom_button.dart';
import '../../core/components/textfield/custom_textfield.dart';
import '../../core/constant/images.dart';
import '../../core/utils/colors/colors.dart';
import '../login/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight(double value) =>
        MediaQuery.sizeOf(context).height * value;
    double deviceWidth(double value) =>
        MediaQuery.sizeOf(context).width * value;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POLOVOYA',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: CustomColors.purple,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: deviceHeight(0.05)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsImage.plane.path),
              ],
            ),
            SizedBox(
              height: deviceHeight(0.05),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceHeight(0.016)),
              child: Column(
                children: [
                  const CustomTextfield(
                    hintText: 'Ad',
                    obscureText: false,
                    prefixIcon: Icons.person_outline,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  const CustomTextfield(
                    hintText: 'Soyad',
                    obscureText: false,
                    prefixIcon: Icons.person_outline,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  const CustomTextfield(
                    hintText: 'E-Posta',
                    obscureText: false,
                    prefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  const CustomTextfield(
                    hintText: 'Parola',
                    obscureText: true,
                    prefixIcon: Icons.lock_outline,
                    isSuffixIcon: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: deviceHeight(0.08),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: customButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainStreamView(),
                                ),
                              );
                            },
                            text: 'Kayıt Ol',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight(0.02),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Hesabınız var mı? ',
                      style: Theme.of(context).textTheme.labelLarge,
                      children: [
                        TextSpan(
                          text: 'Giriş Yap',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: CustomColors.pink_dark,
                                    fontWeight: FontWeight.w600,
                                  ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginView(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
