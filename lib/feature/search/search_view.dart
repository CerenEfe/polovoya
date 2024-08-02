import 'package:flutter/material.dart';
import '../../core/components/textfield/custom_textfield.dart';
import '../../core/utils/colors/colors.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
              decoration: BoxDecoration(
                color: CustomColors.grey200,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(
                            deviceHeight(0.016),
                          ),
                          decoration: BoxDecoration(
                            color: CustomColors.white,
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          child: const Center(child: Text('Min Fiyat')),
                        ),
                      ),
                      SizedBox(
                        width: deviceHeight(0.016),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(
                            deviceHeight(0.016),
                          ),
                          decoration: BoxDecoration(
                            color: CustomColors.white,
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          child: const Center(child: Text('Max Fiyat')),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  const Stack(
                    children: [
                      CustomTextfield(
                        enabled: true,
                        hintText: 'Şehir Seç',
                        obscureText: false,
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
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: EdgeInsets.all(
                      deviceHeight(0.016),
                    ),
                    decoration: BoxDecoration(
                      color: CustomColors.white,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: const Text('Dil'),
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
              decoration: BoxDecoration(
                color: CustomColors.pink_light,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundColor: CustomColors.text,
                        child: Icon(
                          Icons.person,
                          color: CustomColors.white,
                          size: 36,
                        ),
                      ),
                      SizedBox(
                        width: deviceHeight(0.016),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elif Kaya',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: CustomColors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'İstanbul',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: CustomColors.white,
                                ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '\$120/s',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: CustomColors.white,
                                fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  Text(
                    'Merhaba! Ben Elif Yılmaz, 28 yaşındayım ve İngilizce ile İspanyolca dillerinde rehberlik yapıyorum. Seyahat etmeyi ve kültürel zenginlikleri paylaşmayı çok seviyorum. Size yardımcı olmak için buradayım.',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: CustomColors.white,
                        ),
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
              decoration: BoxDecoration(
                color: CustomColors.pink_light,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundColor: CustomColors.text,
                        child: Icon(
                          Icons.person,
                          color: CustomColors.white,
                          size: 36,
                        ),
                      ),
                      SizedBox(
                        width: deviceHeight(0.016),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmet Çelik',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: CustomColors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'izmir',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: CustomColors.white,
                                ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '\$80/s',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: CustomColors.white,
                                fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight(0.016),
                  ),
                  Text(
                    'Merhaba! Ben Ahmet Çelik, 23 yaşındayım ve şu anda İngilizce öğreniyorum. Henüz başlangıç aşamasındayım, bu yüzden saatlik ücretim daha uygun. Size yardımcı olmak için buradayım!',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: CustomColors.white,
                        ),
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
