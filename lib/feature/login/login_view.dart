import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:polovoya/core/components/textfield/custom_textfield.dart';
import 'package:polovoya/core/utils/colors/colors.dart';
import 'package:polovoya/feature/home/home_view.dart';
import 'package:polovoya/feature/register/register_view.dart';

import '../../core/components/button/custom_button.dart';
import '../../core/constant/images.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            SizedBox(
              height: deviceHeight(0.1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsImage.person1.path),
              ],
            ),
            SizedBox(
              height: deviceHeight(0.02),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceHeight(0.016)),
              child: Column(
                children: [
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
                                  builder: (context) => const HomeView(),
                                ),
                              );
                            },
                            text: 'Giriş Yap',
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
                      text: 'Hesabınız yok mu? ',
                      style: Theme.of(context).textTheme.labelLarge,
                      children: [
                        TextSpan(
                          text: 'Kayıt Ol',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: CustomColors.pink_dark,
                                fontWeight: FontWeight.w600,
                              ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterView(),
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
