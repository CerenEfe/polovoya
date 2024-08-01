import 'package:flutter/material.dart';
import 'package:polovoya/core/components/button/custom_button.dart';
import 'package:polovoya/core/constant/images.dart';
import 'package:polovoya/core/utils/colors/colors.dart';
import 'package:polovoya/feature/login/login_view.dart';
import 'package:polovoya/feature/register/register_view.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight(double value) =>
        MediaQuery.sizeOf(context).height * value;
    double deviceWidth(double value) =>
        MediaQuery.sizeOf(context).width * value;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceHeight(0.016)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: deviceHeight(0.2),
            ),
            _LogoArea(),
            SizedBox(
              height: deviceHeight(0.08),
            ),
            _Description(context),
            SizedBox(
              height: deviceHeight(0.1),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceHeight(0.08)),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: customButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterView(),
                          ),
                        );
                      },
                      text: 'Kayıt Ol',
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: customButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                        );
                      },
                      text: 'Giriş Yap',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Text _Description(BuildContext context) {
    return Text(
      'Kendi Rehberinizi Seçin \nSeyahatinizi Planlayın',
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: CustomColors.pink_dark,
          ),
    );
  }

  Row _LogoArea() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsImage.logo.path),
      ],
    );
  }
}
