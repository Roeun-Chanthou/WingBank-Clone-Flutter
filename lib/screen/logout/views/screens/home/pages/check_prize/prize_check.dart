import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/data/data_source/image_prizes.dart';
import 'package:wing_bank/screen/logout/widgets/tabbar_list.dart';

class SplashCoinPrize extends StatelessWidget {
  const SplashCoinPrize({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: const Color(0xFFF5F5F5),
      childWidget: SizedBox(
        height: 200,
        child: Image.asset(
          "assets/animations/wingcoin-v3.png",
        ),
      ),
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 1000),
      nextScreen: const PrizeCheck(),
    );
  }
}

class PrizeCheck extends StatefulWidget {
  const PrizeCheck({super.key});

  @override
  State<PrizeCheck> createState() => _PrizeCheckState();
}

class _PrizeCheckState extends State<PrizeCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          _buildSliverAppBar(),
          _buildSliverTabBar(),
          _buildSliverBody(),
          _buildSliverGrid(),
        ],
      ),
    );
  }

  Widget _buildSliverTabBar() {
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          height: 90,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: tabbarList.length,
            itemBuilder: (context, index) {
              var item = tabbarList[index];
              return Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.sp, vertical: 20.sp),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.sp,
                    ),
                    decoration: BoxDecoration(
                      color: item.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        item.txt,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: item.txtColor,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildSliverGrid() {
    return SliverPadding(
      padding: EdgeInsets.only(
        left: 16.sp,
        right: 16.sp,
        bottom: 20.sp,
      ),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            var item = imagePrize[index];
            return Bounceable(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      item.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
          childCount: imagePrize.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 1,
        ),
      ),
    );
  }

  Widget _buildSliverBody() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            width: 100.w,
            height: 35.h,
            color: Colors.grey[200],
            padding: EdgeInsets.only(
              left: 16.sp,
              top: 10.sp,
              right: 16.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/animations/gold.png",
                  width: 28.w,
                ),
                Text(
                  "You don't have any Prizes available",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 16.sp),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.sp,
                        vertical: 12.sp,
                      )),
                  onPressed: () {},
                  child: Text(
                    "Learn how you can earn your prize",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(height: 26.sp),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Prizes Lists You Can Obtain",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 16.h,
      backgroundColor: BackgroundColor.mainColor,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      forceElevated: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: EdgeInsets.only(
            left: 20,
            bottom: 16,
          ),
          color: BackgroundColor.mainColor,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Redeem Your Prizes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Pay More, Earn More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/animations/gold.png",
                  width: 25.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
