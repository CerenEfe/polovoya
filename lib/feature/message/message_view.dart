import 'package:flutter/material.dart';
import 'package:polovoya/core/components/textfield/custom_textfield.dart';

import '../../core/utils/colors/colors.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
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
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _UserPhotoAndName(deviceHeight, context),
                    SizedBox(
                      height: deviceHeight(0.016),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(
                              deviceHeight(0.016),
                            ),
                            decoration: BoxDecoration(
                              color: CustomColors.pink_light,
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                            ),
                            child: Text(
                              'Merhaba 23 Temmuzda İstanbul’a geleceğim, saat 12:00 ile 16:00 arasında bize rehberlik edebilir misiniz? ',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: CustomColors.white,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceHeight(0.05),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceHeight(0.016),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceHeight(0.05),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(
                              deviceHeight(0.016),
                            ),
                            decoration: BoxDecoration(
                              color: CustomColors.grey400,
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                            ),
                            child: Text(
                              'Merhaba, evet, 23 Temmuz’da ve 09:00-16:00 saatleri arasında size rehberlik yapabilirim. Programınızı nasıl planlamak istediğinizi konuşmak için detayları görüşmek isterim. Size yardımcı olmak için sabırsızlanıyorum!',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: CustomColors.text,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const CustomTextfield(
                obscureText: false,
                hintText: 'Mesaj yaz',
              ),
              SizedBox(
                height: deviceHeight(0.016),
              ),
            ],
          ),
        ));
  }

  Center _UserPhotoAndName(
      double Function(double value) deviceHeight, BuildContext context) {
    return Center(
      child: Column(
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
      ),
    );
  }
}
