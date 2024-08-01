import 'package:flutter/material.dart';

import '../../core/components/textfield/custom_textfield.dart';
import '../../core/constant/images.dart';
import '../../core/utils/colors/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
        padding: EdgeInsets.symmetric(
          horizontal: deviceHeight(0.016),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Merhaba Ceren!',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: CustomColors.purple,
                      ),
                )
              ],
            ),
            SizedBox(
              height: deviceHeight(0.016),
            ),
            const CustomTextfield(
              hintText: 'Ara',
              obscureText: false,
              prefixIcon: Icons.search_outlined,
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(
              height: deviceHeight(0.016),
            ),
            Container(
              padding: EdgeInsets.all(
                deviceHeight(0.016),
              ),
              height: deviceHeight(0.2),
              decoration: BoxDecoration(
                color: CustomColors.pink_light,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AssetsImage.person2.path,
                    width: deviceHeight(0.2),
                  ),
                  const Spacer(),
                  Text(
                    'Rehber Ol',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: CustomColors.white, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight(0.016),
            ),
            Container(
              padding: EdgeInsets.all(
                deviceHeight(0.016),
              ),
              height: deviceHeight(0.2),
              decoration: BoxDecoration(
                color: CustomColors.pink_light,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'Rehber Bul',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: CustomColors.white, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Image.asset(
                    AssetsImage.person4.path,
                    width: deviceHeight(0.2),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight(0.016),
            ),
            Container(
              padding: EdgeInsets.all(
                deviceHeight(0.016),
              ),
              height: deviceHeight(0.2),
              decoration: BoxDecoration(
                color: CustomColors.pink_light,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AssetsImage.person3.path,
                    width: deviceHeight(0.2),
                  ),
                  const Spacer(),
                  Text(
                    'Turlar',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: CustomColors.white, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
