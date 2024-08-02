import 'package:flutter/material.dart';

import '../../core/components/button/custom_button.dart';
import '../../core/components/textfield/custom_textfield.dart';
import '../../core/utils/colors/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceHeight(0.016)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserPhotoAndName(deviceHeight, context),
              SizedBox(
                height: deviceHeight(0.016),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ad Soyad',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: CustomColors.purple,
                        ),
                  ),
                  SizedBox(
                    height: deviceHeight(0.004),
                  ),
                  const CustomTextfield(
                    hintText: 'Ceren Efe',
                    obscureText: false,
                    prefixIcon: Icons.person_outline,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  Text(
                    'E-posta',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: CustomColors.purple,
                        ),
                  ),
                  SizedBox(
                    height: deviceHeight(0.004),
                  ),
                  const CustomTextfield(
                    hintText: 'cerenefe@gmail.com',
                    obscureText: false,
                    prefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  Text(
                    'Telefon',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: CustomColors.purple,
                        ),
                  ),
                  SizedBox(
                    height: deviceHeight(0.004),
                  ),
                  const CustomTextfield(
                    hintText: '+90 532 45 88',
                    obscureText: false,
                    prefixIcon: Icons.phone_outlined,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  Text(
                    'Parola',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: CustomColors.purple,
                        ),
                  ),
                  SizedBox(
                    height: deviceHeight(0.004),
                  ),
                  const CustomTextfield(
                    hintText: '123456',
                    obscureText: false,
                    prefixIcon: Icons.lock_outline,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  Text(
                    'Dil',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: CustomColors.purple,
                        ),
                  ),
                  SizedBox(
                    height: deviceHeight(0.004),
                  ),
                  const Stack(
                    children: [
                      CustomTextfield(
                        hintText: 'Dil Ekle',
                        obscureText: false,
                        prefixIcon: Icons.language_outlined,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      Positioned(
                          top: 0,
                          bottom: 0,
                          right: 5,
                          child: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: CustomColors.purple,
                          ))
                    ],
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
                            onPressed: () {},
                            text: 'Kaydet',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Column _UserPhotoAndName(
      double Function(double value) deviceHeight, BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 36,
          backgroundColor: CustomColors.text,
          child: Icon(
            Icons.person,
            color: CustomColors.white,
            size: 48,
          ),
        ),
        SizedBox(
          height: deviceHeight(0.008),
        ),
        Text(
          'Ceren Efe',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: CustomColors.purple,
              ),
        )
      ],
    );
  }
}
