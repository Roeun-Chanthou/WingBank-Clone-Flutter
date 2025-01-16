import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/data/data_source/language_data.dart';
import 'package:wing_bank/logic/language_logic.dart';
import 'package:wing_bank/screen/logout/components/button_navigationbar.dart';
import 'package:wing_bank/screen/logout/views/screens/card/managecard.dart';
import 'package:wing_bank/screen/logout/views/screens/chat/wing_chat.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/favorite.dart';
import 'package:wing_bank/screen/logout/views/screens/home/body/homescreen.dart';
import 'package:wing_bank/screen/logout/widgets/appbar.dart';
import 'package:wing_bank/screen/logout/widgets/drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  LanguageData _language = LanguageData();

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      appBar: _currentIndex == 0 ? AppBarHomeScreen() : null,
      drawer: const Drawer(
        child: BuildDrawer(),
      ),
      backgroundColor: BackgroundColor.mainColor,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const HomeScreen(),
          const Favorite(),
          const SizedBox(),
          const Chat(),
          const ManageCard(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: BackgroundColor.mainColor,
          unselectedItemColor: Colors.grey.shade600,
          unselectedLabelStyle: TextStyle(fontSize: 14.sp),
          selectedLabelStyle: TextStyle(fontSize: 14.sp),
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              if (value == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Chat(),
                  ),
                );
              } else {
                _currentIndex = value;
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: _currentIndex == 0
                    ? SvgPicture.asset(
                        "assets/navbar/house-blank-2.svg",
                        height: 18.sp,
                        colorFilter: ColorFilter.mode(
                          BackgroundColor.mainColor,
                          BlendMode.srcIn,
                        ),
                      )
                    : SvgPicture.asset(
                        "assets/navbar/house-blank.svg",
                        height: 18.sp,
                        colorFilter: ColorFilter.mode(
                          Colors.grey.shade700,
                          BlendMode.srcIn,
                        ),
                      ),
              ),
              label: _language.navHome,
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: _currentIndex == 1
                    ? SvgPicture.asset(
                        "assets/navbar/heart.svg",
                        height: 18.sp,
                        colorFilter: ColorFilter.mode(
                          BackgroundColor.mainColor,
                          BlendMode.srcIn,
                        ),
                      )
                    : SvgPicture.asset(
                        "assets/navbar/heart-2.svg",
                        height: 18.sp,
                        colorFilter: ColorFilter.mode(
                          Colors.grey.shade700,
                          BlendMode.srcIn,
                        ),
                      ),
              ),
              label: _language.navFavorite,
            ),
            const BottomNavigationBarItem(
              icon: SizedBox(),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: SvgPicture.asset(
                  "assets/navbar/comment.svg",
                  height: 18.sp,
                  colorFilter: ColorFilter.mode(
                    Colors.grey.shade700,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: _language.navChat,
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: _currentIndex == 4
                    ? SvgPicture.asset(
                        "assets/navbar/credit-card.svg",
                        height: 18.sp,
                        colorFilter: ColorFilter.mode(
                          BackgroundColor.mainColor,
                          BlendMode.srcIn,
                        ),
                      )
                    : SvgPicture.asset(
                        "assets/navbar/credit-card-2.svg",
                        height: 18.sp,
                        colorFilter: ColorFilter.mode(
                          Colors.grey.shade500,
                          BlendMode.srcIn,
                        ),
                      ),
              ),
              label: _language.navCard,
            ),
          ],
        ),
        const CenterButtonQR(),
      ],
    );
  }
}
