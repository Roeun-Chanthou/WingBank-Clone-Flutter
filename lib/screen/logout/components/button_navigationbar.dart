import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/scanqr/scan.dart';

class CenterButtonQR extends StatelessWidget {
  const CenterButtonQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -1.5.h,
      left: 0,
      right: 0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: BackgroundColor.mainColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(
                0.6,
              ),
              offset: const Offset(
                0,
                3,
              ),
            ),
          ],
        ),
        child: Container(
          width: 16.w,
          height: 16.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Container(
              width: 15.w,
              height: 15.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade700,
              ),
              child: IconButton(
                icon: Icon(
                  CommunityMaterialIcons.qrcode_scan,
                  color: Colors.white,
                  size: 22.sp,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QRCodeScanner(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
