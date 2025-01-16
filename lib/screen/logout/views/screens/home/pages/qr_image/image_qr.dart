import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/views/controller/controll_screen.dart';
import 'package:wing_bank/screen/logout/views/screens/home/pages/qr_image/module_choose_acc.dart';

class TutorialOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.8);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  int isSelected = 1;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: _buildOverlayContent(context),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 100.w,
        height: 100.h,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/socialmedia/wingbank.png",
                    width: 20.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Show QR Code to a quick and\nsafe payment",
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2.h),
              ],
            ),
            Card(
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              shadowColor: Colors.black,
              elevation: 20,
              child: Container(
                height: 52.h,
                width: 80.w,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset(
                  isSelected == 1
                      ? "assets/navbar/2025-01-08 23.19.59.jpg"
                      : "assets/navbar/2025-01-08 23.20.08 copy.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Receiving To: ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () => showModalSelectAccountClick(context),
                  child: Row(
                    children: [
                      Text(
                        isSelected == 1 ? "101118731 (KHR)" : "101118732 (USD)",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.blue.shade600,
                        size: 22.sp,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 2.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80.w, 28.sp),
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey.withOpacity(0.6),
              ),
              onPressed: () {},
              child: Text(
                "Enter amount",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.withOpacity(0.6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton(Icons.save_alt, "Save"),
                  _buildActionButton(Icons.camera_alt, "Screenshot"),
                  _buildActionButton(Icons.share, "Share Link"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 20.sp),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 14.sp)),
      ],
    );
  }

  void showModalSelectAccountClick(BuildContext context) async {
    var result = await AccountModalDialog.show(context, isSelected);
    if (result != null) {
      isSelected = result;
      (context as Element).markNeedsBuild();
    }
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}
