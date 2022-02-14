import 'package:crypto_app/recom.dart';
import 'package:crypto_app/theme.dart';
import 'package:crypto_app/widget/asset.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xffFAFAFA),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello, Shadam",
                                  style: titleTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Your portofolio looks great today",
                                  style: subtitleTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/Profile.png",
                              width: 36,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          width: 327,
                          child: Image.asset("assets/images/Card.png"),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "My Assets",
                                  style: titleTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "View all",
                                  style: lightTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            AssetCard(
                              name: "Ethereum",
                              money: 60000005,
                              logo: "assets/images/Ethereum Logo.png",
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            AssetCard(
                              name: "Bitcoin",
                              money: 30000002,
                              logo: "assets/images/bitcoin 1.png",
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            AssetCard(
                              name: "Cardano",
                              money: 20000003,
                              logo: "assets/images/Cardano Logo.png",
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Recommended to Buy",
                                  style: titleTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "View all",
                                  style: lightTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 156,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(
                                  width: 24,
                                ),
                                RecomBox(
                                  name: "Tron",
                                  money: 15,
                                  percentage: 5.09,
                                  imageUrl: "assets/images/Tron Logo.png",
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                RecomBox(
                                    name: "Stellar",
                                    money: 9.09,
                                    percentage: 2.01,
                                    imageUrl: "assets/images/Stellar Logo.png"),
                                SizedBox(
                                  width: 14,
                                ),
                                RecomBox(
                                    name: "Xrp Ripple",
                                    money: 8.50,
                                    percentage: 4.09,
                                    imageUrl: "assets/images/Ripple Logo.png"),
                                SizedBox(
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 0,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Color(0xff3328A0),
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "Home",
            ),
          ],
        ),
      ),
    );
  }
}
